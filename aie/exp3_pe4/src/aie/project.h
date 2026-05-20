#include <adf.h>
#include "kernels.h"

using namespace adf;

class simpleGraph : public adf::graph {
private:
  kernel paper_exp3_task_0_kernel;
  kernel paper_exp3_task_1_kernel;
  kernel paper_exp3_task_2_kernel;
  kernel paper_exp3_task_3_kernel;
public:
  input_plio paper_exp3_task_0_closureIn;
  output_plio paper_exp3_task_0_spawnNext;
  input_plio paper_exp3_task_0_taskIn;
  output_plio paper_exp3_task_0_taskOut_argOut;
  input_plio paper_exp3_task_1_closureIn;
  output_plio paper_exp3_task_1_spawnNext;
  input_plio paper_exp3_task_1_taskIn;
  output_plio paper_exp3_task_1_taskOut_argOut;
  input_plio paper_exp3_task_2_closureIn;
  output_plio paper_exp3_task_2_spawnNext;
  input_plio paper_exp3_task_2_taskIn;
  output_plio paper_exp3_task_2_taskOut_argOut;
  input_plio paper_exp3_task_3_closureIn;
  output_plio paper_exp3_task_3_spawnNext;
  input_plio paper_exp3_task_3_taskIn;
  output_plio paper_exp3_task_3_taskOut_argOut;
  simpleGraph(){
    // PLIOs
    paper_exp3_task_0_closureIn = input_plio::create("PLIO_paper_exp3_task_0_closureIn", adf::plio_64_bits, "data/paper_exp3_task_0_closureIn.txt");
    paper_exp3_task_0_spawnNext = output_plio::create("PLIO_paper_exp3_task_0_spawnNext", adf::plio_128_bits, "data/paper_exp3_task_0_spawnNext.txt");
    paper_exp3_task_0_taskIn = input_plio::create("PLIO_paper_exp3_task_0_taskIn", adf::plio_128_bits, "data/paper_exp3_task_0_taskIn.txt");
    paper_exp3_task_0_taskOut_argOut = output_plio::create("PLIO_paper_exp3_task_0_taskOut_argOut", adf::plio_128_bits, "data/paper_exp3_task_0_taskOut_argOut.txt");
    paper_exp3_task_1_closureIn = input_plio::create("PLIO_paper_exp3_task_1_closureIn", adf::plio_64_bits, "data/paper_exp3_task_1_closureIn.txt");
    paper_exp3_task_1_spawnNext = output_plio::create("PLIO_paper_exp3_task_1_spawnNext", adf::plio_128_bits, "data/paper_exp3_task_1_spawnNext.txt");
    paper_exp3_task_1_taskIn = input_plio::create("PLIO_paper_exp3_task_1_taskIn", adf::plio_128_bits, "data/paper_exp3_task_1_taskIn.txt");
    paper_exp3_task_1_taskOut_argOut = output_plio::create("PLIO_paper_exp3_task_1_taskOut_argOut", adf::plio_128_bits, "data/paper_exp3_task_1_taskOut_argOut.txt");
    paper_exp3_task_2_closureIn = input_plio::create("PLIO_paper_exp3_task_2_closureIn", adf::plio_64_bits, "data/paper_exp3_task_2_closureIn.txt");
    paper_exp3_task_2_spawnNext = output_plio::create("PLIO_paper_exp3_task_2_spawnNext", adf::plio_128_bits, "data/paper_exp3_task_2_spawnNext.txt");
    paper_exp3_task_2_taskIn = input_plio::create("PLIO_paper_exp3_task_2_taskIn", adf::plio_128_bits, "data/paper_exp3_task_2_taskIn.txt");
    paper_exp3_task_2_taskOut_argOut = output_plio::create("PLIO_paper_exp3_task_2_taskOut_argOut", adf::plio_128_bits, "data/paper_exp3_task_2_taskOut_argOut.txt");
    paper_exp3_task_3_closureIn = input_plio::create("PLIO_paper_exp3_task_3_closureIn", adf::plio_64_bits, "data/paper_exp3_task_3_closureIn.txt");
    paper_exp3_task_3_spawnNext = output_plio::create("PLIO_paper_exp3_task_3_spawnNext", adf::plio_128_bits, "data/paper_exp3_task_3_spawnNext.txt");
    paper_exp3_task_3_taskIn = input_plio::create("PLIO_paper_exp3_task_3_taskIn", adf::plio_128_bits, "data/paper_exp3_task_3_taskIn.txt");
    paper_exp3_task_3_taskOut_argOut = output_plio::create("PLIO_paper_exp3_task_3_taskOut_argOut", adf::plio_128_bits, "data/paper_exp3_task_3_taskOut_argOut.txt");

    // Kernels
    paper_exp3_task_0_kernel = kernel::create(paper_exp3_task);
    source(paper_exp3_task_0_kernel) = "kernels/paper_exp3_task.cc";
    runtime<ratio>(paper_exp3_task_0_kernel) = 1;
    paper_exp3_task_1_kernel = kernel::create(paper_exp3_task);
    source(paper_exp3_task_1_kernel) = "kernels/paper_exp3_task.cc";
    runtime<ratio>(paper_exp3_task_1_kernel) = 1;
    paper_exp3_task_2_kernel = kernel::create(paper_exp3_task);
    source(paper_exp3_task_2_kernel) = "kernels/paper_exp3_task.cc";
    runtime<ratio>(paper_exp3_task_2_kernel) = 1;
    paper_exp3_task_3_kernel = kernel::create(paper_exp3_task);
    source(paper_exp3_task_3_kernel) = "kernels/paper_exp3_task.cc";
    runtime<ratio>(paper_exp3_task_3_kernel) = 1;

    // Connections
    connect< stream > net0 (paper_exp3_task_0_taskIn.out[0], paper_exp3_task_0_kernel.in[0]);
    connect< stream > net1 (paper_exp3_task_0_closureIn.out[0], paper_exp3_task_0_kernel.in[1]);
    connect< stream > net2 (paper_exp3_task_0_kernel.out[1], paper_exp3_task_0_spawnNext.in[0]);
    connect< stream > net3 (paper_exp3_task_0_kernel.out[0], paper_exp3_task_0_taskOut_argOut.in[0]);
    connect< stream > net4 (paper_exp3_task_1_taskIn.out[0], paper_exp3_task_1_kernel.in[0]);
    connect< stream > net5 (paper_exp3_task_1_closureIn.out[0], paper_exp3_task_1_kernel.in[1]);
    connect< stream > net6 (paper_exp3_task_1_kernel.out[1], paper_exp3_task_1_spawnNext.in[0]);
    connect< stream > net7 (paper_exp3_task_1_kernel.out[0], paper_exp3_task_1_taskOut_argOut.in[0]);
    connect< stream > net8 (paper_exp3_task_2_taskIn.out[0], paper_exp3_task_2_kernel.in[0]);
    connect< stream > net9 (paper_exp3_task_2_closureIn.out[0], paper_exp3_task_2_kernel.in[1]);
    connect< stream > net10 (paper_exp3_task_2_kernel.out[1], paper_exp3_task_2_spawnNext.in[0]);
    connect< stream > net11 (paper_exp3_task_2_kernel.out[0], paper_exp3_task_2_taskOut_argOut.in[0]);
    connect< stream > net12 (paper_exp3_task_3_taskIn.out[0], paper_exp3_task_3_kernel.in[0]);
    connect< stream > net13 (paper_exp3_task_3_closureIn.out[0], paper_exp3_task_3_kernel.in[1]);
    connect< stream > net14 (paper_exp3_task_3_kernel.out[1], paper_exp3_task_3_spawnNext.in[0]);
    connect< stream > net15 (paper_exp3_task_3_kernel.out[0], paper_exp3_task_3_taskOut_argOut.in[0]);
  }
};
