#include "paper_exp1_task.h"

void paper_exp1_task(input_stream_uint32 *taskIn,
                     output_stream_uint32 *taskOut, output_stream_uint32 *argOut) {

  paper_exp1_task_args args;
  bool tlast;
  read_hs(taskIn, args, tlast);
  if (args.depth == 0) {
    delay_cycles(args.delay);
    write_hs(argOut, args.cont, true);
  } else {
    for (uint32_t i = 0; i < args.branchFactor; i++) {
      paper_exp1_task_args newArgs = args;
      newArgs.depth--;
      delay_cycles(args.delay);
      write_hs(taskOut, newArgs, i == args.branchFactor - 1);
    }
  }

}