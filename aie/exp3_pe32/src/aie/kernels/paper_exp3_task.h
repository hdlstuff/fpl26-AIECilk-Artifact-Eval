#ifndef FIB_HELPERS
#define FIB_HELPERS

#ifndef __AIENGINE__
// To please the intellisense parser
extern uint32 readincr(input_stream_uint32 *in, bool &tlast);
extern void writeincr(output_stream_uint32 *out, uint32 value, bool tlast);
#endif

#include "adf.h"

using hs_addr_t = uint64;

// 0000000000010000000000020000000000000004000000020000002000000000 -> d=2 i=0
// 0000000000040e00000000020000000000000004000000010000002055555555 -> d=1 i=0
// 0000000000040e20000000020000000000000004000000000000002055555555 -> d=0 i=0
// 0000000000040e00000000020000000100000004000000010000002000000001 -> d=1 i=1
// 0000000000040e40000000020000000000000004000000000000002055555555 -> d=0 i=0
// 0000000000040e00000000020000000200000004000000010000002000000001 -> d=1 i=2
// 0000000000040e00000000020000000000000004000000000000002055555555 -> d=0 i=0
// 0000000000040e00000000020000000000000004000000000000002055555555 -> d=0 i=0
struct paper_exp3_task_args {
  uint32_t _counter; // for spawn next
  uint32_t delay;
  uint32_t depth;
  uint32_t branchFactor;
  uint32_t index;
  uint32_t serialPhase;
  uint64 cont; // fake cont
};

struct paper_exp3_spawn_next {
  uint64 addr;
  paper_exp3_task_args data;
  uint32_t size;
  uint32_t allow;
  uint32_t _padding[4];
};

template <typename T1, typename T2> struct stream_union_2 {
  union {
    T1 t1;
    T2 t2;
  };
  uint32 _padding[3];
  uint32 tag;
};

template <typename T> struct write_single32_args {
  hs_addr_t address;
  T data;
  uint32 _padding;
};

struct read_stream32_args {
  hs_addr_t address;
  uint32 cnt;
  uint32 _padding;
};

struct read_single_args {
  hs_addr_t address;
};

uint32_t pow(uint32_t base, uint32_t exp) {
  uint32_t result = 1;
  for (uint32_t i = 0; i < exp; i++) {
    result *= base;
  }
  return result;
}

void delay_cycles(uint32 cycles) {
  for (uint32 i = 0; i < cycles; i++) {
    asm volatile("" ::: "memory");
  }
}

void read_hs(input_stream_uint32 *in, uint32 &value, bool& tlast) { value = readincr(in, tlast); }

void read_hs(input_stream_uint32 *in, float &value, bool& tlast) {
  uint32 temp = readincr(in, tlast);
  value = *reinterpret_cast<float *>(&temp);
}

void read_hs(input_stream_uint32 *in, uint64 &value, bool& tlast) {
  value = readincr(in, tlast);
  value = uint64(readincr(in, tlast)) << 32 | value;
}

// void read_hs(input_stream_uint32 *in, hs_addr_t &value, bool& tlast) {
//   value = readincr(in, tlast);
//   value = uint64(readincr(in, tlast)) << 32 | value;
// }

void read_hs(input_stream_uint32 *in, paper_exp3_task_args &args, bool& tlast) {
  read_hs(in, args._counter, tlast);
  read_hs(in, args.delay, tlast);
  read_hs(in, args.depth, tlast);
  read_hs(in, args.branchFactor, tlast);
  read_hs(in, args.index, tlast);
  read_hs(in, args.serialPhase, tlast);
  read_hs(in, args.cont, tlast);
}

void read_hs(input_stream_uint32 *in, paper_exp3_spawn_next &spawnNext, bool& tlast) {
  read_hs(in, spawnNext.addr, tlast);
  read_hs(in, spawnNext.data, tlast);
  read_hs(in, spawnNext.size, tlast);
  read_hs(in, spawnNext.allow, tlast);
  for (int i = 0; i < 4; i++) {
    read_hs(in, spawnNext._padding[i], tlast);
  }
}

template <typename T>
void read_hs(input_stream_uint32 *in, write_single32_args<T> &args, bool &tlast) {
  read_hs(in, args.address, tlast);
  read_hs(in, args.data, tlast);
  read_hs(in, args._padding, tlast);
}

void read_hs(input_stream_uint32 *in, read_stream32_args &args, bool& tlast) {
  read_hs(in, args.address, tlast);
  read_hs(in, args.cnt, tlast);
  read_hs(in, args._padding, tlast);
}

void read_hs(input_stream_uint32 *in, read_single_args &args, bool& tlast) {
  read_hs(in, args.address, tlast);
}

void write_hs(output_stream_uint32 *out, uint32 value, bool tlast) {
  writeincr(out, value, tlast);
}

void write_hs(output_stream_uint32 *out, float value, bool tlast) {
  uint32 temp = *reinterpret_cast<uint32 *>(&value);
  writeincr(out, temp, tlast);
}

void write_hs(output_stream_uint32 *out, uint64 value, bool tlast) {
  writeincr(out, (uint32)(value & 0xFFFFFFFF), false);
  writeincr(out, (uint32)(value >> 32), tlast);
}

// void write_hs(output_stream_uint32 *out, hs_addr_t value, bool tlast) {
//   writeincr(out, (uint32)(value & 0xFFFFFFFF), false);
//   writeincr(out, (uint32)(value >> 32), tlast);
// }

void write_hs(output_stream_uint32 *out, paper_exp3_task_args &args, bool tlast) {
  write_hs(out, args._counter, false);
  write_hs(out, args.delay, false);
  write_hs(out, args.depth, false);
  write_hs(out, args.branchFactor, false);
  write_hs(out, args.index, false);
  write_hs(out, args.serialPhase, false);
  write_hs(out, args.cont, false);
}

void write_hs(output_stream_uint32 *out, paper_exp3_spawn_next &spawnNext, bool tlast) {
  write_hs(out, spawnNext.addr, false);
  write_hs(out, spawnNext.data, false);
  write_hs(out, spawnNext.size, false);
  write_hs(out, spawnNext.allow, false);
  for (int i = 0; i < 4; i++) {
    write_hs(out, spawnNext._padding[i], i == 3 ? tlast : false);
  }
}

template <typename T>
void write_hs(output_stream_uint32 *out, write_single32_args<T> &args, bool tlast) {
  write_hs(out, args.address, false);
  write_hs(out, args.data, false);
  write_hs(out, args._padding, tlast);
}

void write_hs(output_stream_uint32 *out, read_stream32_args &args, bool tlast) {
  write_hs(out, args.address, false);
  write_hs(out, args.cnt, false);
  write_hs(out, args._padding, tlast);
}

void write_hs(output_stream_uint32 *out, read_single_args &args, bool tlast) {
  write_hs(out, args.address, tlast);
}

template <typename T1, typename T2>
void write_hs(output_stream_uint32 *out, stream_union_2<T1, T2> &value, bool tlast) {
  uint32 writtenBytes = 16;
  if (value.tag == 0) {
    write_hs(out, value.t1, false);
    writtenBytes += sizeof(T1);
  } else {
    write_hs(out, value.t2, false);
    writtenBytes += sizeof(T2);
  }
  while (sizeof(value) > writtenBytes) {
    writeincr(out, writtenBytes, false);
    writtenBytes += 4;
  }
  for (int i = 0; i < 3; i++) {
    writeincr(out, i + 1, false);
  }
  writeincr(out, value.tag, tlast);
}
#endif