/* A simple kernel
 */
#include "pagerank.h"
#include <adf.h>

// 1. ReadVertex: Read Neighbors pointer (single read), count (single read) from
// memory.
void readvertex(input_stream_uint32 *taskIn, output_stream_uint32 *taskOut,
                output_stream_uint32 *readSingle64Out) {
  vertex_map_args task;
  bool tlast;
  read_hs(taskIn, task, tlast);
  write_hs(taskOut, task, true);
  // Each vertex has a pointer to its neighbors and 64 bit neighbor count
  read_single_args read_single_neighbor_ptr;
  read_single_neighbor_ptr.address =
      task.pGraph + task.vertex * (sizeof(hs_addr_t) + sizeof(uint64));
  write_hs(readSingle64Out, read_single_neighbor_ptr, false);
  read_single_args read_single_neighbor_cnt;
  read_single_neighbor_cnt.address =
      read_single_neighbor_ptr.address + sizeof(hs_addr_t);
  write_hs(readSingle64Out, read_single_neighbor_cnt, true);
}