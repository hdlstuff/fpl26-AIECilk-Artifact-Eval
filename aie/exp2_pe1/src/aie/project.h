#include <adf.h>
#include "kernels.h"

using namespace adf;

class simpleGraph : public adf::graph {
private:
  kernel paper_exp2_task_kernel;
  kernel paper_exp2_task2_kernel;
public:
  output_plio paper_exp2_task2_argOut;
  input_plio paper_exp2_task2_taskIn;
  input_plio paper_exp2_task_taskIn;
  output_plio paper_exp2_task_taskOut;
  output_plio paper_exp2_task_taskOutGlobal;
  simpleGraph(){
    // PLIOs
    paper_exp2_task2_argOut = output_plio::create("PLIO_paper_exp2_task2_argOut", adf::plio_64_bits, "data/paper_exp2_task2_argOut.txt");
    paper_exp2_task2_taskIn = input_plio::create("PLIO_paper_exp2_task2_taskIn", adf::plio_128_bits, "data/paper_exp2_task2_taskIn.txt");
    paper_exp2_task_taskIn = input_plio::create("PLIO_paper_exp2_task_taskIn", adf::plio_128_bits, "data/paper_exp2_task_taskIn.txt");
    paper_exp2_task_taskOut = output_plio::create("PLIO_paper_exp2_task_taskOut", adf::plio_128_bits, "data/paper_exp2_task_taskOut.txt");
    paper_exp2_task_taskOutGlobal = output_plio::create("PLIO_paper_exp2_task_taskOutGlobal", adf::plio_128_bits, "data/paper_exp2_task_taskOutGlobal.txt");

    // Kernels
    paper_exp2_task_kernel = kernel::create(paper_exp2_task);
    source(paper_exp2_task_kernel) = "kernels/paper_exp2_task.cc";
    runtime<ratio>(paper_exp2_task_kernel) = 1;
    paper_exp2_task2_kernel = kernel::create(paper_exp2_task2);
    source(paper_exp2_task2_kernel) = "kernels/paper_exp2_task2.cc";
    runtime<ratio>(paper_exp2_task2_kernel) = 1;

    // Connections
    connect< stream > net0 (paper_exp2_task_taskIn.out[0], paper_exp2_task_kernel.in[0]);
    connect< stream > net1 (paper_exp2_task_kernel.out[0], paper_exp2_task_taskOut.in[0]);
    connect< stream > net2 (paper_exp2_task_kernel.out[1], paper_exp2_task_taskOutGlobal.in[0]);
    connect< stream > net3 (paper_exp2_task2_taskIn.out[0], paper_exp2_task2_kernel.in[0]);
    connect< stream > net4 (paper_exp2_task2_kernel.out[0], paper_exp2_task2_argOut.in[0]);
  }
};
