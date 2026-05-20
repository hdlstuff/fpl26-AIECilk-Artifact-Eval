/* A simple kernel
 */
#include "pagerank.h"
#include <adf.h>

// 4. Process : Compute contribution and write it back to memory(single write)
//                  .spawn main kernel again with the difference.
void process(input_stream_uint32 *taskIn, input_stream_uint32 *readSingle32In,
             output_stream_uint32 *argOut,
             output_stream_uint32 *writeSingle32Out) {
  vertex_map_args task;
  bool tlast;
  read_hs(taskIn, task, tlast);
  // First read Pcurr_v for the vertex itself
  float Pcurr_v;
  read_hs(readSingle32In, Pcurr_v, tlast);
  // Then for each neighbor, read its Pcurr_u and u_degree, compute contribution
  float sum = 0.0f;
  for (uint32 i = 0; i < task.neighbor_count; i++) {
    neighbor_data ndata;
    read_hs(readSingle32In, ndata, tlast);
    sum += ndata.Pcurr_u / ndata.u_degree;
  }
  float Pnext_v = (1.0f - task.gamma) / task.vertex_count + task.gamma * sum;
  // Write Pnext_v back to memory
  write_single32_args<float> write_single32_Pnext_v;
  write_single32_Pnext_v.address = task.pPrNext + task.vertex * sizeof(float);
  write_single32_Pnext_v.data = Pnext_v;
  write_hs(writeSingle32Out, write_single32_Pnext_v, true);
  // Calculate difference and spawn main task again
  float diff = Pnext_v - Pcurr_v;
  if (diff < 0) {
    diff = -diff;
  }
  write_hs(argOut, task.cont, true);
}