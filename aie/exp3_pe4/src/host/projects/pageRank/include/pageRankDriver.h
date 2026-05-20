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

#define BASE_COUNT 30

using hs_addr_t = uint64_t;

struct paper_exp3_task_args {
  uint32_t _counter; // for spawn next
  uint32_t delay;
  uint32_t depth;
  uint32_t branchFactor;
  uint32_t index;
  uint32_t serialPhase;
  uint64_t cont; // fake cont
};

bool condition(int32_t val) { return val == 1; }

class pageRankDriver : public mFpgaHardCilkDriver {
private:
  uint32_t delay;
  uint32_t depth;
  uint32_t branchFactor;
  uint32_t serialPhase;

public:
  pageRankDriver(std::vector<Memory *> memories, uint32_t delay, uint32_t depth,
                 uint32_t branchFactor, uint32_t serialPhase)
      : mFpgaHardCilkDriver(memories), delay(delay), depth(depth),
        branchFactor(branchFactor), serialPhase(serialPhase) {}

  int run_test_bench_mFpga() override {
    paper_exp3_task_args paper_exp3_task_args_0 = {0, 0, 0, 0, 0, 0, 0};
    paper_exp3_task_args base_task = {0, 0, 0, 0, 0, 0, 0};

    // Create the base task
    base_task.delay = delay;
    base_task.depth = depth;
    base_task.branchFactor = branchFactor;
    base_task.serialPhase = serialPhase;
    base_task.index = 0;

    int counter = std::pow(base_task.branchFactor - base_task.serialPhase,
                           base_task.depth) *
                      BASE_COUNT +
                  1;

    // Print the counter value
    printf("Join counter value: %d\n", counter);

    memories_[0]->allocateMemFPGA(4096, 512);

    uint64_t addr =
        memories_[0]->allocateMemFPGA(sizeof(paper_exp3_task_args_0), 512);
    base_task.cont = addr;

    memories_[0]->copyToDevice(
        addr, reinterpret_cast<const uint8_t *>(&paper_exp3_task_args_0),
        sizeof(paper_exp3_task_args_0));
    memories_[0]->copyToDevice(
        addr, reinterpret_cast<const uint8_t *>(&counter), sizeof(counter));

    std::vector<paper_exp3_task_args> base_task_data;
    for (int i = 0; i < BASE_COUNT; i++) {
      base_task_data.push_back(base_task);
    }

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