#include <adf.h>
#include "kernels.h"

using namespace adf;

class simpleGraph : public adf::graph {
private:
  kernel pageRankReduce_kernel;
  kernel readvertex_kernel;
  kernel readneighborids_kernel;
  kernel readneighbors_kernel;
  kernel process_kernel;
public:
  output_plio pageRankReduce_argOut;
  input_plio pageRankReduce_taskIn;
  output_plio pageRankReduce_taskOutGlobal;
  output_plio process_argOut;
  input_plio process_readSingle32In;
  output_plio process_writeSingle32Out;
  input_plio readneighborids_readSingle64In;
  output_plio readneighborids_readStream32Out;
  output_plio readneighbors_readSingle32Out;
  input_plio readneighbors_readStream32In;
  output_plio readvertex_readSingle64Out;
  input_plio readvertex_taskIn;
  simpleGraph(){
    // PLIOs
    pageRankReduce_argOut = output_plio::create("PLIO_pageRankReduce_argOut", adf::plio_64_bits, "data/pageRankReduce_argOut.txt");
    pageRankReduce_taskIn = input_plio::create("PLIO_pageRankReduce_taskIn", adf::plio_128_bits, "data/pageRankReduce_taskIn.txt");
    pageRankReduce_taskOutGlobal = output_plio::create("PLIO_pageRankReduce_taskOutGlobal", adf::plio_128_bits, "data/pageRankReduce_taskOutGlobal.txt");
    process_argOut = output_plio::create("PLIO_process_argOut", adf::plio_64_bits, "data/process_argOut.txt");
    process_readSingle32In = input_plio::create("PLIO_process_readSingle32In", adf::plio_32_bits, "data/process_readSingle32In.txt");
    process_writeSingle32Out = output_plio::create("PLIO_process_writeSingle32Out", adf::plio_128_bits, "data/process_writeSingle32Out.txt");
    readneighborids_readSingle64In = input_plio::create("PLIO_readneighborids_readSingle64In", adf::plio_64_bits, "data/readneighborids_readSingle64In.txt");
    readneighborids_readStream32Out = output_plio::create("PLIO_readneighborids_readStream32Out", adf::plio_128_bits, "data/readneighborids_readStream32Out.txt");
    readneighbors_readSingle32Out = output_plio::create("PLIO_readneighbors_readSingle32Out", adf::plio_64_bits, "data/readneighbors_readSingle32Out.txt");
    readneighbors_readStream32In = input_plio::create("PLIO_readneighbors_readStream32In", adf::plio_32_bits, "data/readneighbors_readStream32In.txt");
    readvertex_readSingle64Out = output_plio::create("PLIO_readvertex_readSingle64Out", adf::plio_64_bits, "data/readvertex_readSingle64Out.txt");
    readvertex_taskIn = input_plio::create("PLIO_readvertex_taskIn", adf::plio_128_bits, "data/readvertex_taskIn.txt");

    // Kernels
    pageRankReduce_kernel = kernel::create(pageRankReduce);
    source(pageRankReduce_kernel) = "kernels/pageRankReduce.cc";
    runtime<ratio>(pageRankReduce_kernel) = 1;
    readvertex_kernel = kernel::create(readvertex);
    source(readvertex_kernel) = "kernels/readvertex.cc";
    runtime<ratio>(readvertex_kernel) = 1;
    readneighborids_kernel = kernel::create(readneighborids);
    source(readneighborids_kernel) = "kernels/readneighborids.cc";
    runtime<ratio>(readneighborids_kernel) = 1;
    readneighbors_kernel = kernel::create(readneighbors);
    source(readneighbors_kernel) = "kernels/readneighbors.cc";
    runtime<ratio>(readneighbors_kernel) = 1;
    process_kernel = kernel::create(process);
    source(process_kernel) = "kernels/process.cc";
    runtime<ratio>(process_kernel) = 1;

    // Connections
    connect< stream > net0 (pageRankReduce_taskIn.out[0], pageRankReduce_kernel.in[0]);
    connect< stream > net1 (pageRankReduce_kernel.out[0], pageRankReduce_taskOutGlobal.in[0]);
    connect< stream > net2 (pageRankReduce_kernel.out[1], pageRankReduce_argOut.in[0]);
    connect< stream > net3 (readvertex_taskIn.out[0], readvertex_kernel.in[0]);
    connect< stream > net4 (readvertex_kernel.out[1], readvertex_readSingle64Out.in[0]);
    connect< stream > net5 (readvertex_kernel.out[0], readneighborids_kernel.in[0]);
    connect< stream > net6 (readneighborids_readSingle64In.out[0], readneighborids_kernel.in[1]);
    connect< stream > net7 (readneighborids_kernel.out[1], readneighborids_readStream32Out.in[0]);
    connect< stream > net8 (readneighborids_kernel.out[0], readneighbors_kernel.in[0]);
    connect< stream > net9 (readneighbors_readStream32In.out[0], readneighbors_kernel.in[1]);
    connect< stream > net10 (readneighbors_kernel.out[1], readneighbors_readSingle32Out.in[0]);
    connect< stream > net11 (readneighbors_kernel.out[0], process_kernel.in[0]);
    connect< stream > net12 (process_readSingle32In.out[0], process_kernel.in[1]);
    connect< stream > net13 (process_kernel.out[0], process_argOut.in[0]);
    connect< stream > net14 (process_kernel.out[1], process_writeSingle32Out.in[0]);
  }
};
