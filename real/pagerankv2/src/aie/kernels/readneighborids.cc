/* A simple kernel
 */
#include "pagerank.h"
#include <adf.h>

// 2. ReadNeighborIds : Read neighbor ids(stream) from memory.
void readneighborids(input_stream_uint32 *taskIn,
                     input_stream_uint32 *readSingle64In,
                     output_stream_uint32 *taskOut,
                     output_stream_uint32 *readStream32Out) {
  vertex_map_args task;
  bool tlast;
  hs_addr_t neighbors_ptr;
  uint64 neighbor_count;
  read_hs(taskIn, task, tlast);
  read_hs(readSingle64In, neighbors_ptr, tlast);
  read_hs(readSingle64In, neighbor_count, tlast);
  task.neighbor_count = (uint32)neighbor_count;
  write_hs(taskOut, task, true);

  // Prepare read stream args
  read_stream32_args read_stream32;
  read_stream32.address = neighbors_ptr;
  read_stream32.cnt = (uint32)neighbor_count;
  write_hs(readStream32Out, read_stream32, true);

}