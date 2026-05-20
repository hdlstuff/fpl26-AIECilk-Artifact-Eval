#ifndef FIB_HELPERS
#define FIB_HELPERS

#ifndef __AIENGINE__
// To please the intellisense parser
extern uint32 readincr(input_stream_uint32 *in, bool &tlast);
extern void writeincr(output_stream_uint32 *out, uint32 value, bool tlast);
#endif

#include "adf.h"

using hs_addr_t = uint64;

struct paper_exp1_task_args {
  uint32_t delay;
  uint16_t depth;
  uint16_t branchFactor;
  uint64 cont; // fake cont
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

void read_hs(input_stream_uint32 *in, paper_exp1_task_args &args, bool& tlast) {
  read_hs(in, args.delay, tlast);
  uint32 temp;
  read_hs(in, temp, tlast);
  args.depth = temp & 0xFFFF;
  args.branchFactor = (temp >> 16) & 0xFFFF;
  read_hs(in, args.cont, tlast);
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

void write_hs(output_stream_uint32 *out, paper_exp1_task_args &args, bool tlast) {
  write_hs(out, args.delay, false);
  uint32 temp = (args.branchFactor << 16) | args.depth;
  write_hs(out, temp, false);
  write_hs(out, args.cont, tlast);
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

#endif