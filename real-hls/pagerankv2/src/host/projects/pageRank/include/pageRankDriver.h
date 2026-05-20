#pragma once

#include <algorithm>
#include <chrono>
#include <graph.h>
#include <mFpgaHardCilkDriver.h>
#include <numeric>
#include <queue>
#include <set>
#include <stdio.h>

#define DEBUG_LINE printf("line %d\n", __LINE__);

#define eps 1e-6
#define damping 0.85

using hs_addr_t = uint64_t;

// 8*64 = 512 bits
struct pageRankReduce_args {
  float value;
  uint32_t iteration_count;
  hs_addr_t pGraph;
  hs_addr_t pPrCurr;
  hs_addr_t pPrNext;
  uint64_t padding;
  float gamma;
  uint32_t padding_;
  uint32_t vertex_count;
  float epsilon;
  hs_addr_t cont;
};

// 8*64 = 512 bits + 64 bit stream of neighbor data
struct vertex_map_args {
  hs_addr_t pPrCurr;
  hs_addr_t pPrNext;
  hs_addr_t _padding;
  hs_addr_t pGraph;
  uint32_t vertex;
  uint32_t vertex_count;
  float gamma;
  uint32_t neighbor_count;
  float Pcurr_v;
  uint32_t __padding[3];
};

bool condition(int32_t val) { return val == 1; }

class pageRankDriver : public mFpgaHardCilkDriver {
private:
  std::string graph_file;

public:
  pageRankDriver(std::vector<Memory *> memories, const std::string &graph_file)
      : mFpgaHardCilkDriver(memories), graph_file(graph_file) {}

  int run_test_bench_mFpga() override {
    Graph g(graph_file, false);

    pageRankReduce_args page_rank_map_args_0 = {0, 0, 0, 0, 0, 0, 0, 0};

    int counter = 2;

    // Print the counter value
    printf("Join counter value: %d\n", counter);

    memories_[0]->allocateMemFPGA(4096, 512);

    uint64_t addr =
        memories_[0]->allocateMemFPGA(sizeof(page_rank_map_args_0), 512);

    memories_[0]->copyToDevice(
        addr, reinterpret_cast<const uint8_t *>(&page_rank_map_args_0),
        sizeof(page_rank_map_args_0));
    memories_[0]->copyToDevice(
        addr, reinterpret_cast<const uint8_t *>(&counter), sizeof(counter));

    // inverted_degree vector
    std::vector<_Float32> inv_degree(g.getNumVertices(), 0.0f);

    // Copying the graph data to the FPGA
    uint64_t totalSize = 0;
    std::vector<uint32_t> allLists;

    for (size_t i = 0; i < g.getNumVertices(); i++) {
      auto curr_list = g.getNeighbors(i);

      totalSize += (curr_list.size()); // + 1);

      // allLists.push_back(curr_list.size());
      allLists.insert(allLists.end(), curr_list.begin(), curr_list.end());

      std::cout << "Vertex " << i << " degree: " << curr_list.size()
                << std::endl;
    }

    uint64_t lists_base_addr =
        memories_[0]->allocateMemFPGA(totalSize * sizeof(uint32_t), 512);
    memories_[0]->copyToDevice(
        lists_base_addr, reinterpret_cast<const uint8_t *>(allLists.data()),
        totalSize * sizeof(uint32_t));

    // log lists_base_addr and totalSize and end address of the lists
    printf(
        "lists_base_addr: %lx, totalSize: %lu, end address of the lists: %lx\n",
        lists_base_addr, totalSize,
        lists_base_addr + totalSize * sizeof(uint32_t));

    std::vector<uint64_t> adj_list_addresses;
    for (size_t i = 0; i < g.getNumVertices(); i++) {
      adj_list_addresses.push_back(lists_base_addr);
      adj_list_addresses.push_back((uint64_t)g.getNeighbors(i).size());
      uint64_t size = g.getNeighbors(i).size();
      lists_base_addr += size * sizeof(uint32_t);
    }
    auto list_addr = memories_[0]->allocateMemFPGA(
        sizeof(uint64_t) * adj_list_addresses.size(), 512);
    memories_[0]->copyToDevice(
        list_addr, reinterpret_cast<const uint8_t *>(adj_list_addresses.data()),
        adj_list_addresses.size() * sizeof(uint64_t));

    // Create the base task
    page_rank_map_args_0.cont = addr;
    page_rank_map_args_0.iteration_count = 1000;
    page_rank_map_args_0.pPrCurr = memories_[0]->allocateMemFPGA(
        sizeof(_Float32) * g.getNumVertices(), 512);
    page_rank_map_args_0.pPrNext = memories_[0]->allocateMemFPGA(
        sizeof(_Float32) * g.getNumVertices(), 512);
    page_rank_map_args_0.pGraph = list_addr;
    // page_rank_map_args_0.vertex_count = 0;
    page_rank_map_args_0.vertex_count = g.getNumVertices();
    page_rank_map_args_0.epsilon = eps;
    page_rank_map_args_0.gamma = damping;
    page_rank_map_args_0.value = 0.0f;

    // Write the inverted degree vector to the FPGA
    // memory_->copyToDevice(page_rank_map_args_0.pInvDegree,
    // reinterpret_cast<const uint8_t *>(inv_degree.data()), inv_degree.size() *
    // sizeof(_Float32));

    // Write 1.0  / g.getNumVertices() to elements of Pnext // not in MFPGA
    // (switched in first iteration on FPGA code)
    std::vector<_Float32> Pnext(g.getNumVertices(),
                                (float)1.0 / g.getNumVertices());
    memories_[0]->copyToDevice(page_rank_map_args_0.pPrNext,
                               reinterpret_cast<const uint8_t *>(Pnext.data()),
                               Pnext.size() * sizeof(_Float32));

    // Write zeros to elements of Pcurr
    std::vector<_Float32> Pcurr(g.getNumVertices(),
                                (float)1.0 / g.getNumVertices());
    memories_[0]->copyToDevice(page_rank_map_args_0.pPrCurr,
                               reinterpret_cast<const uint8_t *>(Pcurr.data()),
                               Pcurr.size() * sizeof(_Float32));

    std::vector<pageRankReduce_args> base_task_data = {page_rank_map_args_0};

    // Log the time taken for init
    auto start = std::chrono::high_resolution_clock::now();
    initSystemMfpga(base_task_data, condition);
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end - start;
    std::cout << "Time taken for init: " << elapsed.count() << "s" << std::endl;

    std::cout << "Press Enter to start the system..." << std::endl;
    std::cin.get();

    startSystemMfpga();

    // Run the management loop
    start = std::chrono::high_resolution_clock::now();
    managementLoopMfpga();
    end = std::chrono::high_resolution_clock::now();
    elapsed = end - start;

    // Read back the Pcurr values from the FPGA
    std::vector<_Float32> Pcurr_back(g.getNumVertices());
    memories_[0]->copyFromDevice(reinterpret_cast<uint8_t *>(Pcurr_back.data()),
                                 page_rank_map_args_0.pPrNext,
                                 Pcurr_back.size() * sizeof(_Float32));

    // Sort and print the top n values
    std::vector<size_t> indices(Pcurr_back.size());
    std::iota(indices.begin(), indices.end(), 0);
    std::sort(indices.begin(), indices.end(),
              [&Pcurr_back](size_t i1, size_t i2) {
                return Pcurr_back[i1] > Pcurr_back[i2];
              });

    for (size_t i = 0; i < g.getNumVertices(); i++) {
      std::cout << "Vertex: " << indices[i]
                << " PageRank: " << Pcurr_back[indices[i]] << std::endl;
    }

    // Write all the pr values with verticies into a file
    std::ofstream file("pageRank_output_2_fpga.txt");
    for (size_t i = 0; i < g.getNumVertices(); i++) {
      file << "Vertex: " << indices[i]
           << " PageRank: " << Pcurr_back[indices[i]] << std::endl;
    }
    file.close();
    // Read back the Pnext values from the FPGA
    std::vector<_Float32> Pnext_back(g.getNumVertices());
    memories_[0]->copyFromDevice(reinterpret_cast<uint8_t *>(Pnext_back.data()),
                                 page_rank_map_args_0.pPrCurr,
                                 Pnext_back.size() * sizeof(_Float32));

    // Sort and print the top n values
    std::vector<size_t> indices2(Pnext_back.size());
    std::iota(indices2.begin(), indices2.end(), 0);
    std::sort(indices2.begin(), indices2.end(),
              [&Pnext_back](size_t i1, size_t i2) {
                return Pnext_back[i1] > Pnext_back[i2];
              });

    for (size_t i = 0; i < g.getNumVertices(); i++) {
      std::cout << "Vertex: " << indices2[i]
                << " PageRank: " << Pnext_back[indices2[i]] << std::endl;
    }

    // Write all the pr values with verticies into a file
    std::ofstream file2("pageRank_output_3_fpga.txt");
    for (size_t i = 0; i < g.getNumVertices(); i++) {
      file2 << "Vertex: " << indices2[i]
           << " PageRank: " << Pnext_back[indices2[i]] << std::endl;
    }

    file2.close();

    std::cout << "Time taken for management loop: " << elapsed.count() << "s"
              << std::endl;

    sleep(5);

    return 0;
  }
};