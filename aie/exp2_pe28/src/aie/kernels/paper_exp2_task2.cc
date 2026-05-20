#include "paper_exp2_task.h"

void paper_exp2_task2(input_stream_uint32 *taskIn, output_stream_uint32 *argOut) {

  paper_exp2_task2_args args;
  bool tlast;
  read_hs(taskIn, args, tlast);
  delay_cycles(args.delay);
  write_hs(argOut, args.cont, true);

}