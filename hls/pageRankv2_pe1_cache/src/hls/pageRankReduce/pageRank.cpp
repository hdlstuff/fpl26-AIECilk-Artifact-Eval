#include "def.h"
#include <bits/types/cookie_io_functions_t.h>
#include <cstddef>
#include <cstdint>
#include <etc/autopilot_ssdm_op.h>
#include <string.h>
#include <stdio.h>
#include <cmath>
#include <sys/types.h>
#include <ap_axi_sdata.h>
#include <algorithm>
#include <type_traits>
#include "hls_stream.h"
#include "hls_task.h"



void pageRankReduce(
  hls::stream<vertex_map_args> &taskOutGlobal,
  hls::stream<pageRankReduce_args> &taskIn,
  hls::stream<addr_t> &argOut
) {

  #pragma HLS INTERFACE mode = axis port = taskIn
  #pragma HLS INTERFACE mode = axis port = taskOutGlobal
  #pragma HLS INTERFACE mode = axis port = argOut

  // read first task for init
  auto base_task = taskIn.read();
  bool done_flag = false;
  int iter = 0;


  while(!done_flag){
    float sum = 0;

    // spawn the vertex_map tasks
    for(int i = 0; i < base_task.vertex_count; i++){
      #pragma HLS PIPELINE II=1
      vertex_map_args vmap_task;
      vmap_task.vertex = i;
      vmap_task.gamma = base_task.gamma;
      vmap_task.pGraph = base_task.pGraph;
      vmap_task.pPrCurr = base_task.pPrNext; // invert current and next
      vmap_task.pPrNext = base_task.pPrCurr; // invert current and next
      vmap_task.vertex_count = base_task.vertex_count;
      vmap_task.cont = base_task.cont;


      taskOutGlobal.write(vmap_task);
    }
    argOut.write(base_task.cont);
    break;

    // read returned tasks
    float partial_sums[4] = {0, 0, 0, 0};
    #pragma HLS ARRAY_PARTITION variable=partial_sums complete dim=1
    for (int i = 0; i < base_task.vertex_count; i++) {
        #pragma HLS PIPELINE II=1
        auto reduce_task = taskIn.read();
        partial_sums[i % 4] += reduce_task.value;
    }

    // Final accumulation (outside critical path)
    for (int i = 0; i < 4; i++) {
        sum += partial_sums[i];
    }

    addr_t temp = base_task.pPrNext;
    base_task.pPrNext = base_task.pPrCurr;
    base_task.pPrCurr = temp;
    iter++;
    if(sum < base_task.epsilon || iter > base_task.iteration_count){
      done_flag = true;
      argOut.write(base_task.cont);
    }
  }
}

void readVertex(void * mem0,
                void * mem1,
                hls::stream<Addr> & v_neighbours_stream,
                hls::stream<uint32_t> &v_size_stream,
                hls::stream<Addr> &adj_list_stream,
                hls::stream<Addr> &Pcurr_stream,
                hls::stream<float>& adder_in_feed
            ){


  auto v_neighbours = v_neighbours_stream.read();
  auto v_size = v_size_stream.read();
  auto adj_list = adj_list_stream.read();
  auto Pcurr = Pcurr_stream.read();

  for(int i = 0; i < v_size; i++){
    #pragma HLS PIPELINE II =1
    uint32_t u = MEM_ARR_IN(mem0, v_neighbours, i, uint32_t);

    Addr u_neighbors = MEM_IN(mem1, adj_list + (u << 4), Addr);

    uint32_t u_degree =  MEM_IN(mem0, adj_list + (u << 4) + 8, uint64_t);
    float Pcurr_u = MEM_ARR_IN(mem1, Pcurr, u, float);
    float contribution = Pcurr_u / u_degree; // NOTE THIS MIGHT CAUSE SHIT!
    adder_in_feed.write(contribution);
  }
}

void adder_function(hls::stream<uint32_t>& v_size_stream,
                    hls::stream <float> & sum_stream,
                    hls::stream<float>& adder_results,
                    hls::stream<float>& adder_in_feed_0,
                    hls::stream<float>& adder_in_feed_1
                    ){

  float value0, value1;
  auto v_size = v_size_stream.read();
  float sum = 0;
  for(int i = 0; i < v_size; i++){
    #pragma HLS PIPELINE II=1
    adder_results.write(adder_in_feed_0.read() + adder_in_feed_1.read());
  }

  for(int i = 0; i < adder_latency; i++){
    #pragma HLS PIPELINE
    sum += adder_in_feed_0.read();
  }

  sum_stream.write(sum);

}

void feed_adder_value(hls::stream<uint32_t> & v_size_stream, hls::stream<float>& adder_results, hls::stream<float>& adder_in_feed){

  auto v_size = v_size_stream.read();

  for(int i = 0; i < adder_latency; i++) {
    #pragma HLS PIPELINE II=1
    adder_in_feed.write(0);
  }

  for(int i = 0; i < v_size; i++){ // Not the best approach
    #pragma HLS PIPELINE II=1
    adder_in_feed.write(adder_results.read());
  }
}




void read_task( void * mem,
                hls::stream<vertex_map_args> &taskIn,
                hls::stream<Addr>& v_neighbours_stream,
                hls::stream<Addr>& Pcurrs,
                hls::stream<Addr>& adj_lists,
                hls::stream<uint32_t>& v_size_0,
                hls::stream<uint32_t>& v_size_1,
                hls::stream<uint32_t>& v_size_2,
                hls::stream<vertex_map_args> &taskToWriteArg
              ){
    //#pragma HLS PIPELINE



    //if(taskIn.empty()) return;


    auto task = taskIn.read();

    Addr v_neighbours = MEM_IN(mem, task.pGraph + (task.vertex << 4), Addr);
    uint32_t v_neighbours_size = MEM_IN(mem, task.pGraph + (task.vertex << 4) + 8, uint64_t);

    v_neighbours_stream.write(v_neighbours);

    v_size_0.write(v_neighbours_size);
    v_size_1.write(v_neighbours_size);
    v_size_2.write(v_neighbours_size);

    Pcurrs.write(task.pPrCurr);
    adj_lists.write(task.pGraph);
    taskToWriteArg.write(task);
}

void write_arg(void * mem,
              hls::stream<Addr>&argOut,
              hls::stream<vertex_map_args> &taskIn,
              hls::stream<float>& sums
){
  //#pragma HLS PIPELINE

  auto sum = sums.read();

  auto task = taskIn.read();

  auto vertex_count = task.vertex_count;
  auto Pcurr = task.pPrCurr;
  auto vertex = task.vertex;
  auto Pnext = task.pPrNext;

  float Pnext_v = (1 - task.gamma) / vertex_count + task.gamma * sum;
  float Pcurrent_v = MEM_ARR_IN(mem, Pcurr, vertex, float);
  float diffs_v = std::abs(Pnext_v - Pcurrent_v);


  MEM_ARR_OUT(mem, Pnext, vertex, float, Pnext_v);
  volatile float val = MEM_ARR_IN(mem, Pnext, vertex, float);
  val = MEM_ARR_IN(mem, Pnext, vertex, float);
  if(val == Pnext_v){
      argOut.write(task.cont);
  }

}


void vertex_map(void * mem_0,
                void * mem_1,
                void * mem_2,
                void * mem_5,
                hls::stream<vertex_map_args> &taskIn,
                hls::stream<Addr>&argOut){

//#pragma HLS INTERFACE port=return mode=ap_ctrl_chain
#pragma HLS INTERFACE mode = axis port = taskIn
#pragma HLS INTERFACE mode = axis port = argOut
#pragma HLS INTERFACE mode = m_axi port = mem_0 bundle=gmem channel=0 latency=64
#pragma HLS INTERFACE mode = m_axi port = mem_1 bundle=gmem channel=1 latency=64 num_write_outstanding=1 num_read_outstanding=64 max_read_burst_length=16 max_widen_bitwidth=256
#pragma HLS INTERFACE mode = m_axi port = mem_2 bundle=gmem channel=2 latency=64 num_write_outstanding=1 num_read_outstanding=64 max_read_burst_length=16 max_widen_bitwidth=256
#pragma HLS INTERFACE mode = m_axi port = mem_5 bundle=gmem channel=5 latency=64 num_write_outstanding=1 num_read_outstanding=64 max_read_burst_length=16 max_widen_bitwidth=256

#pragma HLS cache port=mem_1 lines=2 depth=32
#pragma HLS cache port=mem_2 lines=2 depth=32

                #pragma HLS DATAFLOW
                hls_thread_local hls::stream<float, 128> adder_in_feed_0;
                hls_thread_local hls::stream<float, 128> adder_in_feed_1;
                hls_thread_local hls::stream<float, 128> adder_results;


                hls_thread_local hls::stream<uint32_t, 9> v_size_0;
                hls_thread_local hls::stream<uint32_t, 9> v_size_1;
                hls_thread_local hls::stream<uint32_t, 9> v_size_2;

                hls_thread_local hls::stream<Addr, 9> Pcurrs;
                hls_thread_local hls::stream<Addr, 9> adj_lists;
                hls_thread_local hls::stream<Addr, 9> v_neighbours_stream;

                hls_thread_local hls::stream<float, 9> sums_stream;

                hls_thread_local hls::stream<vertex_map_args, 9> taskToWrite;




                // Instantiate read task
                hls_thread_local hls::task t0(read_task,
                                              mem_0,
                                              taskIn,
                                              v_neighbours_stream,
                                              Pcurrs,
                                              adj_lists,
                                              v_size_0,
                                              v_size_1,
                                              v_size_2,
                                              taskToWrite
                                              );


                hls_thread_local hls::task t201 (readVertex, mem_1, mem_2, v_neighbours_stream, v_size_0, adj_lists, Pcurrs,  adder_in_feed_1);



                hls_thread_local hls::task t200 (feed_adder_value, v_size_1, adder_results, adder_in_feed_0);


                hls_thread_local hls::task t202 (adder_function, v_size_2, sums_stream, adder_results, adder_in_feed_0, adder_in_feed_1);



                // Instantiate the write arg
                hls_thread_local hls::task t3 (write_arg,
                                               mem_5,
                                               argOut,
                                               taskToWrite,
                                               sums_stream);


}
