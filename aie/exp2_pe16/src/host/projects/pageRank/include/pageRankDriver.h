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

struct paper_exp1_task_args {
  uint32_t delay;
  uint16_t depth;
  uint16_t branchFactor;
  uint64_t cont; // fake cont
};

bool condition(int32_t val) { return val == 1; }

class pageRankDriver : public mFpgaHardCilkDriver {
private:
  uint32_t delay;
  uint16_t depth;
  uint16_t branchFactor;

public:
  pageRankDriver(std::vector<Memory *> memories, uint32_t delay, uint16_t depth, uint16_t branchFactor)
      : mFpgaHardCilkDriver(memories), delay(delay), depth(depth), branchFactor(branchFactor) {}

  int run_test_bench_mFpga() override {
    paper_exp1_task_args paper_exp1_task_args_0 = {0, 0, 0, 0};
    paper_exp1_task_args base_task = {0, 0, 0, 0};

    // Create the base task
    base_task.delay = delay;
    base_task.depth = depth;
    base_task.branchFactor = branchFactor;

    int counter = std::pow(base_task.branchFactor, base_task.depth) + 1;

    // Print the counter value
    printf("Join counter value: %d\n", counter);

    memories_[0]->allocateMemFPGA(4096, 512);

    uint64_t addr =
        memories_[0]->allocateMemFPGA(sizeof(paper_exp1_task_args_0), 512);
    base_task.cont = addr;

    memories_[0]->copyToDevice(
        addr, reinterpret_cast<const uint8_t *>(&paper_exp1_task_args_0),
        sizeof(paper_exp1_task_args_0));
    memories_[0]->copyToDevice(
        addr, reinterpret_cast<const uint8_t *>(&counter), sizeof(counter));


    std::vector<paper_exp1_task_args> base_task_data = {base_task};

    // Log the time taken for init
    auto start = std::chrono::high_resolution_clock::now();
    initSystemMfpga(base_task_data, condition);
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end - start;
    std::cout << "Time taken for init: " << elapsed.count() << "s" << std::endl;

    // std::cout << "Press Enter to start the system..." << std::endl;
    // std::cin.get();

    startSystemMfpga();

    // Run the management loop
    start = std::chrono::high_resolution_clock::now();
    managementLoopMfpga();
    end = std::chrono::high_resolution_clock::now();
    elapsed = end - start;

    std::cout << "Time taken for management loop: " << elapsed.count() << "s"
              << std::endl;

    sleep(5);

    return 0;
  }
};