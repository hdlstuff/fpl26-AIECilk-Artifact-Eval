#include <adf.h>
#include "kernels.h"

using namespace adf;

class simpleGraph : public adf::graph {
private:
  kernel paper_exp2_task_0_kernel;
  kernel paper_exp2_task_1_kernel;
  kernel paper_exp2_task_2_kernel;
  kernel paper_exp2_task_3_kernel;
  kernel paper_exp2_task2_0_kernel;
  kernel paper_exp2_task2_1_kernel;
  kernel paper_exp2_task2_2_kernel;
  kernel paper_exp2_task2_3_kernel;
public:
  output_plio paper_exp2_task2_0_argOut;
  input_plio paper_exp2_task2_0_taskIn;
  output_plio paper_exp2_task2_1_argOut;
  input_plio paper_exp2_task2_1_taskIn;
  output_plio paper_exp2_task2_2_argOut;
  input_plio paper_exp2_task2_2_taskIn;
  output_plio paper_exp2_task2_3_argOut;
  input_plio paper_exp2_task2_3_taskIn;
  input_plio paper_exp2_task_0_taskIn;
  output_plio paper_exp2_task_0_taskOut;
  output_plio paper_exp2_task_0_taskOutGlobal;
  input_plio paper_exp2_task_1_taskIn;
  output_plio paper_exp2_task_1_taskOut;
  output_plio paper_exp2_task_1_taskOutGlobal;
  input_plio paper_exp2_task_2_taskIn;
  output_plio paper_exp2_task_2_taskOut;
  output_plio paper_exp2_task_2_taskOutGlobal;
  input_plio paper_exp2_task_3_taskIn;
  output_plio paper_exp2_task_3_taskOut;
  output_plio paper_exp2_task_3_taskOutGlobal;
  simpleGraph(){
    // PLIOs
    paper_exp2_task2_0_argOut = output_plio::create("PLIO_paper_exp2_task2_0_argOut", adf::plio_64_bits, "data/paper_exp2_task2_0_argOut.txt");
    paper_exp2_task2_0_taskIn = input_plio::create("PLIO_paper_exp2_task2_0_taskIn", adf::plio_128_bits, "data/paper_exp2_task2_0_taskIn.txt");
    paper_exp2_task2_1_argOut = output_plio::create("PLIO_paper_exp2_task2_1_argOut", adf::plio_64_bits, "data/paper_exp2_task2_1_argOut.txt");
    paper_exp2_task2_1_taskIn = input_plio::create("PLIO_paper_exp2_task2_1_taskIn", adf::plio_128_bits, "data/paper_exp2_task2_1_taskIn.txt");
    paper_exp2_task2_2_argOut = output_plio::create("PLIO_paper_exp2_task2_2_argOut", adf::plio_64_bits, "data/paper_exp2_task2_2_argOut.txt");
    paper_exp2_task2_2_taskIn = input_plio::create("PLIO_paper_exp2_task2_2_taskIn", adf::plio_128_bits, "data/paper_exp2_task2_2_taskIn.txt");
    paper_exp2_task2_3_argOut = output_plio::create("PLIO_paper_exp2_task2_3_argOut", adf::plio_64_bits, "data/paper_exp2_task2_3_argOut.txt");
    paper_exp2_task2_3_taskIn = input_plio::create("PLIO_paper_exp2_task2_3_taskIn", adf::plio_128_bits, "data/paper_exp2_task2_3_taskIn.txt");
    paper_exp2_task_0_taskIn = input_plio::create("PLIO_paper_exp2_task_0_taskIn", adf::plio_128_bits, "data/paper_exp2_task_0_taskIn.txt");
    paper_exp2_task_0_taskOut = output_plio::create("PLIO_paper_exp2_task_0_taskOut", adf::plio_128_bits, "data/paper_exp2_task_0_taskOut.txt");
    paper_exp2_task_0_taskOutGlobal = output_plio::create("PLIO_paper_exp2_task_0_taskOutGlobal", adf::plio_128_bits, "data/paper_exp2_task_0_taskOutGlobal.txt");
    paper_exp2_task_1_taskIn = input_plio::create("PLIO_paper_exp2_task_1_taskIn", adf::plio_128_bits, "data/paper_exp2_task_1_taskIn.txt");
    paper_exp2_task_1_taskOut = output_plio::create("PLIO_paper_exp2_task_1_taskOut", adf::plio_128_bits, "data/paper_exp2_task_1_taskOut.txt");
    paper_exp2_task_1_taskOutGlobal = output_plio::create("PLIO_paper_exp2_task_1_taskOutGlobal", adf::plio_128_bits, "data/paper_exp2_task_1_taskOutGlobal.txt");
    paper_exp2_task_2_taskIn = input_plio::create("PLIO_paper_exp2_task_2_taskIn", adf::plio_128_bits, "data/paper_exp2_task_2_taskIn.txt");
    paper_exp2_task_2_taskOut = output_plio::create("PLIO_paper_exp2_task_2_taskOut", adf::plio_128_bits, "data/paper_exp2_task_2_taskOut.txt");
    paper_exp2_task_2_taskOutGlobal = output_plio::create("PLIO_paper_exp2_task_2_taskOutGlobal", adf::plio_128_bits, "data/paper_exp2_task_2_taskOutGlobal.txt");
    paper_exp2_task_3_taskIn = input_plio::create("PLIO_paper_exp2_task_3_taskIn", adf::plio_128_bits, "data/paper_exp2_task_3_taskIn.txt");
    paper_exp2_task_3_taskOut = output_plio::create("PLIO_paper_exp2_task_3_taskOut", adf::plio_128_bits, "data/paper_exp2_task_3_taskOut.txt");
    paper_exp2_task_3_taskOutGlobal = output_plio::create("PLIO_paper_exp2_task_3_taskOutGlobal", adf::plio_128_bits, "data/paper_exp2_task_3_taskOutGlobal.txt");

    // Kernels
    paper_exp2_task_0_kernel = kernel::create(paper_exp2_task);
    source(paper_exp2_task_0_kernel) = "kernels/paper_exp2_task.cc";
    runtime<ratio>(paper_exp2_task_0_kernel) = 1;
    paper_exp2_task_1_kernel = kernel::create(paper_exp2_task);
    source(paper_exp2_task_1_kernel) = "kernels/paper_exp2_task.cc";
    runtime<ratio>(paper_exp2_task_1_kernel) = 1;
    paper_exp2_task_2_kernel = kernel::create(paper_exp2_task);
    source(paper_exp2_task_2_kernel) = "kernels/paper_exp2_task.cc";
    runtime<ratio>(paper_exp2_task_2_kernel) = 1;
    paper_exp2_task_3_kernel = kernel::create(paper_exp2_task);
    source(paper_exp2_task_3_kernel) = "kernels/paper_exp2_task.cc";
    runtime<ratio>(paper_exp2_task_3_kernel) = 1;
    paper_exp2_task2_0_kernel = kernel::create(paper_exp2_task2);
    source(paper_exp2_task2_0_kernel) = "kernels/paper_exp2_task2.cc";
    runtime<ratio>(paper_exp2_task2_0_kernel) = 1;
    paper_exp2_task2_1_kernel = kernel::create(paper_exp2_task2);
    source(paper_exp2_task2_1_kernel) = "kernels/paper_exp2_task2.cc";
    runtime<ratio>(paper_exp2_task2_1_kernel) = 1;
    paper_exp2_task2_2_kernel = kernel::create(paper_exp2_task2);
    source(paper_exp2_task2_2_kernel) = "kernels/paper_exp2_task2.cc";
    runtime<ratio>(paper_exp2_task2_2_kernel) = 1;
    paper_exp2_task2_3_kernel = kernel::create(paper_exp2_task2);
    source(paper_exp2_task2_3_kernel) = "kernels/paper_exp2_task2.cc";
    runtime<ratio>(paper_exp2_task2_3_kernel) = 1;

    // Connections
    connect< stream > net0 (paper_exp2_task_0_taskIn.out[0], paper_exp2_task_0_kernel.in[0]);
    connect< stream > net1 (paper_exp2_task_0_kernel.out[0], paper_exp2_task_0_taskOut.in[0]);
    connect< stream > net2 (paper_exp2_task_0_kernel.out[1], paper_exp2_task_0_taskOutGlobal.in[0]);
    connect< stream > net3 (paper_exp2_task_1_taskIn.out[0], paper_exp2_task_1_kernel.in[0]);
    connect< stream > net4 (paper_exp2_task_1_kernel.out[0], paper_exp2_task_1_taskOut.in[0]);
    connect< stream > net5 (paper_exp2_task_1_kernel.out[1], paper_exp2_task_1_taskOutGlobal.in[0]);
    connect< stream > net6 (paper_exp2_task_2_taskIn.out[0], paper_exp2_task_2_kernel.in[0]);
    connect< stream > net7 (paper_exp2_task_2_kernel.out[0], paper_exp2_task_2_taskOut.in[0]);
    connect< stream > net8 (paper_exp2_task_2_kernel.out[1], paper_exp2_task_2_taskOutGlobal.in[0]);
    connect< stream > net9 (paper_exp2_task_3_taskIn.out[0], paper_exp2_task_3_kernel.in[0]);
    connect< stream > net10 (paper_exp2_task_3_kernel.out[0], paper_exp2_task_3_taskOut.in[0]);
    connect< stream > net11 (paper_exp2_task_3_kernel.out[1], paper_exp2_task_3_taskOutGlobal.in[0]);
    connect< stream > net12 (paper_exp2_task2_0_taskIn.out[0], paper_exp2_task2_0_kernel.in[0]);
    connect< stream > net13 (paper_exp2_task2_0_kernel.out[0], paper_exp2_task2_0_argOut.in[0]);
    connect< stream > net14 (paper_exp2_task2_1_taskIn.out[0], paper_exp2_task2_1_kernel.in[0]);
    connect< stream > net15 (paper_exp2_task2_1_kernel.out[0], paper_exp2_task2_1_argOut.in[0]);
    connect< stream > net16 (paper_exp2_task2_2_taskIn.out[0], paper_exp2_task2_2_kernel.in[0]);
    connect< stream > net17 (paper_exp2_task2_2_kernel.out[0], paper_exp2_task2_2_argOut.in[0]);
    connect< stream > net18 (paper_exp2_task2_3_taskIn.out[0], paper_exp2_task2_3_kernel.in[0]);
    connect< stream > net19 (paper_exp2_task2_3_kernel.out[0], paper_exp2_task2_3_argOut.in[0]);
  }
};
