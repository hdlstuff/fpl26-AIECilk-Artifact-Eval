/* A simple kernel
 */
#include "pagerank.h"
#include <adf.h>

void pageRankReduce(input_stream_uint32 *taskIn,
                    output_stream_uint32 *taskOutGlobal,
                    output_stream_uint32 *argOut) {
  pageRankReduce_args base_task;
  bool tlast;
  read_hs(taskIn, base_task, tlast);
  bool done = false;
  uint32 iteration = 0;
  while (!done) {
    float sum = 0.0f;

    for (int i = 0; i < base_task.vertex_count; i++) {
      vertex_map_args vmap_task;
      vmap_task.vertex = i;
      vmap_task.gamma = base_task.gamma;
      vmap_task.pGraph = base_task.pGraph;
      vmap_task.pPrCurr = base_task.pPrNext; // invert current and next
      vmap_task.pPrNext = base_task.pPrCurr; // invert current and next
      vmap_task.vertex_count = base_task.vertex_count;
      vmap_task.cont = base_task.cont;

      printf("Spawning vertex map for vertex %d with pGraph address %llu and "
             "pPrCurr address %llu\n",
             i, vmap_task.pGraph, vmap_task.pPrCurr);

      write_hs(taskOutGlobal, vmap_task, i == base_task.vertex_count - 1); // tlast for the last task
    }
    // Spawn only one iteration
    break;

    for (int i = 0; i < base_task.vertex_count; i++) {
      pageRankReduce_args new_task;
      read_hs(taskIn, new_task, tlast);
      printf("Received reduction task with value %f\n", new_task.value);
      sum += new_task.value;
    }

    hs_addr_t temp = base_task.pPrNext;
    base_task.pPrNext = base_task.pPrCurr;
    base_task.pPrCurr = temp;
    iteration++;
    if (sum < base_task.epsilon || iteration > base_task.iteration_count) {
      printf("Converged after %d iterations with sum %f\n", iteration, sum);
      done = true;
      write_hs(argOut, base_task.cont, true);
    }
  }
}