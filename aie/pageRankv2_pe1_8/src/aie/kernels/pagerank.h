#ifndef FIB_HELPERS
#define FIB_HELPERS

#ifndef __AIENGINE__
// To please the intellisense parser
extern uint32 readincr(input_stream_uint32 *in, bool &tlast);
extern void writeincr(output_stream_uint32 *out, uint32 value, bool tlast);
#endif

#include "adf.h"

using hs_addr_t = uint64;

// 8*64 = 512 bits
struct pageRankReduce_args {
  float value;
  uint32 iteration_count;
  hs_addr_t pGraph;
  hs_addr_t pPrCurr;
  hs_addr_t pPrNext;
  uint64 padding;
  float gamma;
  uint32 padding_;
  uint32 vertex_count;
  float epsilon;
  hs_addr_t cont;
};

// 64 bits per neighbor
struct neighbor_data {
  uint32 u_degree;
  float Pcurr_u;
};

// 8*64 = 512 bits + 64 bit stream of neighbor data
// 55555555555555555555555555555555
struct vertex_map_args {
  hs_addr_t pPrCurr; // 50000
  hs_addr_t pPrNext; // 40000
  hs_addr_t cont;
  hs_addr_t pGraph;      // 30000
  uint32 vertex;         // 00000000
  uint32 vertex_count;   // 00000005
  float gamma;           // 3f59999a
  uint32 neighbor_count; // 55555555
  float Pcurr_v;         // 55555555
  uint32 __padding[3];   // 55555555 55555555 55555555
};
// Reads 30000 -> 20000
// Reads 30004 -> 2
// Reads 20000 2 times -> 1 2 0 2 0 1 3 4  etc.
// Reads 50000 -> 0
// Reads 50004 -> 0
// Reads 30018 -> 2
// Reads 50008
// Reads 30028

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

void read_hs(input_stream_uint32 *in, pageRankReduce_args &args, bool& tlast) {
  read_hs(in, args.value, tlast);
  read_hs(in, args.iteration_count, tlast);
  read_hs(in, args.pGraph, tlast);
  read_hs(in, args.pPrCurr, tlast);
  read_hs(in, args.pPrNext, tlast);
  read_hs(in, args.padding, tlast);
  read_hs(in, args.gamma, tlast);
  read_hs(in, args.padding_, tlast);
  read_hs(in, args.vertex_count, tlast);
  read_hs(in, args.epsilon, tlast);
  read_hs(in, args.cont, tlast);
}

void read_hs(input_stream_uint32 *in, neighbor_data &ndata, bool& tlast) {
  read_hs(in, ndata.u_degree, tlast);
  read_hs(in, ndata.Pcurr_u, tlast);
}

void read_hs(input_stream_uint32 *in, vertex_map_args &args, bool& tlast) {
  read_hs(in, args.pPrCurr, tlast);
  read_hs(in, args.pPrNext, tlast);
  read_hs(in, args.cont, tlast);
  read_hs(in, args.pGraph, tlast);
  read_hs(in, args.vertex, tlast);
  read_hs(in, args.vertex_count, tlast);
  read_hs(in, args.gamma, tlast);
  read_hs(in, args.neighbor_count, tlast);
  read_hs(in, args.Pcurr_v, tlast);
  for (int i = 0; i < 3; i++) {
    read_hs(in, args.__padding[i], tlast);
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

void write_hs(output_stream_uint32 *out, pageRankReduce_args &args, bool tlast) {
  write_hs(out, args.value, false);
  write_hs(out, args.iteration_count, false);
  write_hs(out, args.pGraph, false);
  write_hs(out, args.pPrCurr, false);
  write_hs(out, args.pPrNext, false);
  write_hs(out, args.padding, false);
  write_hs(out, args.gamma, false);
  write_hs(out, args.padding_, false);
  write_hs(out, args.vertex_count, false);
  write_hs(out, args.epsilon, false);
  write_hs(out, args.cont, tlast);
}

void write_hs(output_stream_uint32 *out, neighbor_data &ndata, bool tlast) {
  write_hs(out, ndata.u_degree, false);
  write_hs(out, ndata.Pcurr_u, tlast);
}

void write_hs(output_stream_uint32 *out, vertex_map_args &args, bool tlast) {
  write_hs(out, args.pPrCurr, false);
  write_hs(out, args.pPrNext, false);
  write_hs(out, args.cont, false);
  write_hs(out, args.pGraph, false);
  write_hs(out, args.vertex, false);
  write_hs(out, args.vertex_count, false);
  write_hs(out, args.gamma, false);
  write_hs(out, args.neighbor_count, false);
  write_hs(out, args.Pcurr_v, false);
  for (int i = 0; i < 3; i++) {
    write_hs(out, args.__padding[i], i == 2 && tlast);
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

#endif