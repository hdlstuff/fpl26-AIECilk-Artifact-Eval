/* A simple kernel
 */
#include "pagerank.h"
#include <adf.h>

// 3. ReadNeighbors: Read current PageRank value (single read) for the vertex
// itself, and for each neighbor, read its current PageRank value from memory
// (single read) and its degree (single read).
void readneighbors(input_stream_uint32 *taskIn,
                   input_stream_uint32 *readStream32In,
                   output_stream_uint32 *taskOut,
                   output_stream_uint32 *readSingle32Out) {
  vertex_map_args task;
  bool tlast;
  read_hs(taskIn, task, tlast);
  write_hs(taskOut, task, true);
  // Read Pcurr_v for the vertex itself
  read_single_args read_single32_Pcurr_v;
  read_single32_Pcurr_v.address = task.pPrCurr + task.vertex * sizeof(float);
  write_hs(readSingle32Out, read_single32_Pcurr_v, task.neighbor_count == 0); // If there are no neighbors, we can set tlast here
  // For each neighbor, read its Pcurr_u and degree
  for (uint32 i = 0; i < task.neighbor_count; i++) {
    uint32 neighbor_id;
    read_hs(readStream32In, neighbor_id, tlast);
    // Read u_degree
    read_single_args read_single32_u_degree;
    read_single32_u_degree.address =
        task.pGraph + neighbor_id * (sizeof(hs_addr_t) + sizeof(uint64)) +
        sizeof(hs_addr_t);
    write_hs(readSingle32Out, read_single32_u_degree, false);
    // Read Pcurr_u
    read_single_args read_single32_Pcurr_u;
    read_single32_Pcurr_u.address = task.pPrCurr + neighbor_id * sizeof(float);
    write_hs(readSingle32Out, read_single32_Pcurr_u, i == task.neighbor_count - 1);
  }
}

// ReadSingle64 = 2 + 2
// ReadStream32 = 1 (0 B) + 1 (48 B)
// ReadSingle32 = 1 + 25
// WriteSingle32 = 1 + 1