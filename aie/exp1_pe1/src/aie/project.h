#include <adf.h>
#include "kernels.h"

using namespace adf;

class simpleGraph : public adf::graph {
private:
  kernel paper_exp1_task_kernel;
public:
  output_plio paper_exp1_task_argOut;
  input_plio paper_exp1_task_taskIn;
  output_plio paper_exp1_task_taskOut;
  simpleGraph(){
    // PLIOs
    paper_exp1_task_argOut = output_plio::create("PLIO_paper_exp1_task_argOut", adf::plio_64_bits, "data/paper_exp1_task_argOut.txt");
    paper_exp1_task_taskIn = input_plio::create("PLIO_paper_exp1_task_taskIn", adf::plio_128_bits, "data/paper_exp1_task_taskIn.txt");
    paper_exp1_task_taskOut = output_plio::create("PLIO_paper_exp1_task_taskOut", adf::plio_128_bits, "data/paper_exp1_task_taskOut.txt");

    // Kernels
    paper_exp1_task_kernel = kernel::create(paper_exp1_task);
    source(paper_exp1_task_kernel) = "kernels/paper_exp1_task.cc";
    runtime<ratio>(paper_exp1_task_kernel) = 1;

    // Connections
    connect< stream > net0 (paper_exp1_task_taskIn.out[0], paper_exp1_task_kernel.in[0]);
    connect< stream > net1 (paper_exp1_task_kernel.out[0], paper_exp1_task_taskOut.in[0]);
    connect< stream > net2 (paper_exp1_task_kernel.out[1], paper_exp1_task_argOut.in[0]);
  }
};
