#include <adf.h>
#include "kernels.h"

using namespace adf;

class simpleGraph : public adf::graph {
private:
  kernel paper_exp1_task_0_kernel;
  kernel paper_exp1_task_1_kernel;
  kernel paper_exp1_task_2_kernel;
  kernel paper_exp1_task_3_kernel;
public:
  output_plio paper_exp1_task_0_argOut;
  input_plio paper_exp1_task_0_taskIn;
  output_plio paper_exp1_task_0_taskOut;
  output_plio paper_exp1_task_1_argOut;
  input_plio paper_exp1_task_1_taskIn;
  output_plio paper_exp1_task_1_taskOut;
  output_plio paper_exp1_task_2_argOut;
  input_plio paper_exp1_task_2_taskIn;
  output_plio paper_exp1_task_2_taskOut;
  output_plio paper_exp1_task_3_argOut;
  input_plio paper_exp1_task_3_taskIn;
  output_plio paper_exp1_task_3_taskOut;
  simpleGraph(){
    // PLIOs
    paper_exp1_task_0_argOut = output_plio::create("PLIO_paper_exp1_task_0_argOut", adf::plio_64_bits, "data/paper_exp1_task_0_argOut.txt");
    paper_exp1_task_0_taskIn = input_plio::create("PLIO_paper_exp1_task_0_taskIn", adf::plio_128_bits, "data/paper_exp1_task_0_taskIn.txt");
    paper_exp1_task_0_taskOut = output_plio::create("PLIO_paper_exp1_task_0_taskOut", adf::plio_128_bits, "data/paper_exp1_task_0_taskOut.txt");
    paper_exp1_task_1_argOut = output_plio::create("PLIO_paper_exp1_task_1_argOut", adf::plio_64_bits, "data/paper_exp1_task_1_argOut.txt");
    paper_exp1_task_1_taskIn = input_plio::create("PLIO_paper_exp1_task_1_taskIn", adf::plio_128_bits, "data/paper_exp1_task_1_taskIn.txt");
    paper_exp1_task_1_taskOut = output_plio::create("PLIO_paper_exp1_task_1_taskOut", adf::plio_128_bits, "data/paper_exp1_task_1_taskOut.txt");
    paper_exp1_task_2_argOut = output_plio::create("PLIO_paper_exp1_task_2_argOut", adf::plio_64_bits, "data/paper_exp1_task_2_argOut.txt");
    paper_exp1_task_2_taskIn = input_plio::create("PLIO_paper_exp1_task_2_taskIn", adf::plio_128_bits, "data/paper_exp1_task_2_taskIn.txt");
    paper_exp1_task_2_taskOut = output_plio::create("PLIO_paper_exp1_task_2_taskOut", adf::plio_128_bits, "data/paper_exp1_task_2_taskOut.txt");
    paper_exp1_task_3_argOut = output_plio::create("PLIO_paper_exp1_task_3_argOut", adf::plio_64_bits, "data/paper_exp1_task_3_argOut.txt");
    paper_exp1_task_3_taskIn = input_plio::create("PLIO_paper_exp1_task_3_taskIn", adf::plio_128_bits, "data/paper_exp1_task_3_taskIn.txt");
    paper_exp1_task_3_taskOut = output_plio::create("PLIO_paper_exp1_task_3_taskOut", adf::plio_128_bits, "data/paper_exp1_task_3_taskOut.txt");

    // Kernels
    paper_exp1_task_0_kernel = kernel::create(paper_exp1_task);
    source(paper_exp1_task_0_kernel) = "kernels/paper_exp1_task.cc";
    runtime<ratio>(paper_exp1_task_0_kernel) = 1;
    paper_exp1_task_1_kernel = kernel::create(paper_exp1_task);
    source(paper_exp1_task_1_kernel) = "kernels/paper_exp1_task.cc";
    runtime<ratio>(paper_exp1_task_1_kernel) = 1;
    paper_exp1_task_2_kernel = kernel::create(paper_exp1_task);
    source(paper_exp1_task_2_kernel) = "kernels/paper_exp1_task.cc";
    runtime<ratio>(paper_exp1_task_2_kernel) = 1;
    paper_exp1_task_3_kernel = kernel::create(paper_exp1_task);
    source(paper_exp1_task_3_kernel) = "kernels/paper_exp1_task.cc";
    runtime<ratio>(paper_exp1_task_3_kernel) = 1;

    // Connections
    connect< stream > net0 (paper_exp1_task_0_taskIn.out[0], paper_exp1_task_0_kernel.in[0]);
    connect< stream > net1 (paper_exp1_task_0_kernel.out[0], paper_exp1_task_0_taskOut.in[0]);
    connect< stream > net2 (paper_exp1_task_0_kernel.out[1], paper_exp1_task_0_argOut.in[0]);
    connect< stream > net3 (paper_exp1_task_1_taskIn.out[0], paper_exp1_task_1_kernel.in[0]);
    connect< stream > net4 (paper_exp1_task_1_kernel.out[0], paper_exp1_task_1_taskOut.in[0]);
    connect< stream > net5 (paper_exp1_task_1_kernel.out[1], paper_exp1_task_1_argOut.in[0]);
    connect< stream > net6 (paper_exp1_task_2_taskIn.out[0], paper_exp1_task_2_kernel.in[0]);
    connect< stream > net7 (paper_exp1_task_2_kernel.out[0], paper_exp1_task_2_taskOut.in[0]);
    connect< stream > net8 (paper_exp1_task_2_kernel.out[1], paper_exp1_task_2_argOut.in[0]);
    connect< stream > net9 (paper_exp1_task_3_taskIn.out[0], paper_exp1_task_3_kernel.in[0]);
    connect< stream > net10 (paper_exp1_task_3_kernel.out[0], paper_exp1_task_3_taskOut.in[0]);
    connect< stream > net11 (paper_exp1_task_3_kernel.out[1], paper_exp1_task_3_argOut.in[0]);
  }
};
