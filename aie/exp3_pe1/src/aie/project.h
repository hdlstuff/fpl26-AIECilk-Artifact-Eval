#include <adf.h>
#include "kernels.h"

using namespace adf;

class simpleGraph : public adf::graph {
private:
  kernel paper_exp3_task_kernel;
public:
  input_plio paper_exp3_task_closureIn;
  output_plio paper_exp3_task_spawnNext;
  input_plio paper_exp3_task_taskIn;
  output_plio paper_exp3_task_taskOut_argOut;
  simpleGraph(){
    // PLIOs
    paper_exp3_task_closureIn = input_plio::create("PLIO_paper_exp3_task_closureIn", adf::plio_64_bits, "data/paper_exp3_task_closureIn.txt");
    paper_exp3_task_spawnNext = output_plio::create("PLIO_paper_exp3_task_spawnNext", adf::plio_128_bits, "data/paper_exp3_task_spawnNext.txt");
    paper_exp3_task_taskIn = input_plio::create("PLIO_paper_exp3_task_taskIn", adf::plio_128_bits, "data/paper_exp3_task_taskIn.txt");
    paper_exp3_task_taskOut_argOut = output_plio::create("PLIO_paper_exp3_task_taskOut_argOut", adf::plio_128_bits, "data/paper_exp3_task_taskOut_argOut.txt");

    // Kernels
    paper_exp3_task_kernel = kernel::create(paper_exp3_task);
    source(paper_exp3_task_kernel) = "kernels/paper_exp3_task.cc";
    runtime<ratio>(paper_exp3_task_kernel) = 1;

    // Connections
    connect< stream > net0 (paper_exp3_task_taskIn.out[0], paper_exp3_task_kernel.in[0]);
    connect< stream > net1 (paper_exp3_task_closureIn.out[0], paper_exp3_task_kernel.in[1]);
    connect< stream > net2 (paper_exp3_task_kernel.out[1], paper_exp3_task_spawnNext.in[0]);
    connect< stream > net3 (paper_exp3_task_kernel.out[0], paper_exp3_task_taskOut_argOut.in[0]);
  }
};
