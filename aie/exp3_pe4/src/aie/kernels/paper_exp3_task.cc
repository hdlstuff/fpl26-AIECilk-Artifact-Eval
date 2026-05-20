#include "paper_exp3_task.h"

void paper_exp3_task(input_stream_uint32 *taskIn,
                     input_stream_uint32 *closureIn,
                     output_stream_uint32 *taskOut_argOut,
                     output_stream_uint32 *spawnNext) {
  paper_exp3_task_args args;
  bool tlast;
  read_hs(taskIn, args, tlast);
  if (args.depth == 0) {
    delay_cycles(args.delay);
    stream_union_2<paper_exp3_task_args, uint64> argOut;
    argOut.tag = 1;
    argOut.t2 = args.cont;
    write_hs(taskOut_argOut, argOut, true);
  } else {
    if (args.index < args.serialPhase) {
      delay_cycles(args.delay);
      hs_addr_t closure;
      read_hs(closureIn, closure, tlast);
      // Spawn depth-1
      stream_union_2<paper_exp3_task_args, uint64> newTask;
      newTask.tag = 0;
      newTask.t1.delay = args.delay;
      newTask.t1.depth = args.depth - 1;
      newTask.t1.branchFactor = args.branchFactor;
      newTask.t1.index = 0;
      newTask.t1.serialPhase = args.serialPhase;
      newTask.t1.cont = closure;
      write_hs(taskOut_argOut, newTask, true);

      // Spawn next in the same depth with next index
      paper_exp3_spawn_next spawnNextData;
      spawnNextData.addr = closure;
      spawnNextData.data = args;
      spawnNextData.data._counter =
          pow(args.branchFactor - args.serialPhase, args.depth - 1);
      spawnNextData.data.index = args.index + 1;
      spawnNextData.size = 5;
      spawnNextData.allow = 1;
      write_hs(spawnNext, spawnNextData, true);
    } else {
      hs_addr_t closure;
      read_hs(closureIn, closure, tlast);
      // Spawn next a random task to trick write buffer into
      // accepting allows for th whole loop
      paper_exp3_spawn_next spawnNextData;
      spawnNextData.addr = closure;
      spawnNextData.data._counter = 100;
      spawnNextData.size = 5;
      spawnNextData.allow = args.branchFactor - args.index;
      write_hs(spawnNext, spawnNextData, true);
      for (int i = args.index; i < args.branchFactor; i++) {
        delay_cycles(args.delay);
        // Spawn depth-1
        stream_union_2<paper_exp3_task_args, uint64> newTask;
        newTask.tag = 0;
        newTask.t1.delay = args.delay;
        newTask.t1.depth = args.depth - 1;
        newTask.t1.branchFactor = args.branchFactor;
        newTask.t1.index = 0;
        newTask.t1.serialPhase = args.serialPhase;
        newTask.t1.cont = args.cont;
        write_hs(taskOut_argOut, newTask, true);
      }
    }
  }
}