#include "paper_exp2_task.h"

void paper_exp2_task(input_stream_uint32 *taskIn,
                     output_stream_uint32 *taskOut, output_stream_uint32 *taskOutGlobal) {

  paper_exp2_task_args args;
  paper_exp2_task2_args args2;
  bool tlast;
  read_hs(taskIn, args, tlast);
  args2.delay = args.delay;
  args2._padding1 = 0;
  args2.cont = args.cont;
  if (args.depth == 0) {
    delay_cycles(args.delay);
    write_hs(taskOutGlobal, args2, true);
  } else {
    for (uint32_t i = 0; i < args.branchFactor; i++) {
      paper_exp2_task_args newArgs = args;
      newArgs.depth--;
      delay_cycles(args.delay);
      write_hs(taskOutGlobal, args2, i == args.branchFactor - 1);
      write_hs(taskOut, newArgs, i == args.branchFactor - 1);
    }
  }

}