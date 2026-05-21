#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_task.h"
#include "hls_directio.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  template<size_t n>
  void stream_move(void* to, void* from)
  {
    auto t = (hls::stream<ap_uint<n>>*)to;
    auto f = (hls::stream<ap_uint<n>>*)from;
    while (!f->empty()) {
      t->write(f->read());
    }
  }

  template<size_t n>
  void task_stream_move(void* to, void* from)
  {
    auto t = (hls::stream<ap_uint<n>>*)to;
    auto f = (hls::stream<ap_uint<n>>*)from;
    hls::task(
      [=] () { t->write(f->read()); }
    );
  }

  template<size_t n>
  void directio_move(void* to, void* from)
  {
    auto t = (hls::directio<ap_uint<n>>*)to;
    auto f = (hls::directio<ap_uint<n>>*)from;
    while (f->valid()) {
      t->write(f->read());
    }
  }

  template<size_t n>
  void task_directio_move(void* to, void* from)
  {
    auto t = (hls::directio<ap_uint<n>>*)to;
    auto f = (hls::directio<ap_uint<n>>*)from;
    hls::task(
      [=] () { t->write(f->read()); }
    );
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  struct MoveAXIS
  {
    struct None {};
    typedef typename std::conditional<sdata==0, None, ap_uint<sdata>>::type A;
    typedef typename std::conditional<skeep==0, None, ap_uint<skeep>>::type K;
    typedef typename std::conditional<sstrb==0, None, ap_uint<sstrb>>::type S;
    typedef typename std::conditional<suser==0, None, ap_uint<suser>>::type U;
    typedef typename std::conditional<slast==0, None, ap_uint<slast>>::type L;
    typedef typename std::conditional<sid==0, None, ap_uint<sid>>::type I;
    typedef typename std::conditional<sdest==0, None, ap_uint<sdest>>::type E;
    struct ST { A data; K keep; S strb; U user; L last; I id; E dest; };

    static void toSC(void* data, void* keep, void* strb, void* user, void* last, void* id, void* dest, void* axis)
    {
      ST st;
      ((hls::stream<ST>*)axis)->read(st);
      if (data) ((hls::stream<A>*)data)->write(st.data);
      if (keep) ((hls::stream<K>*)keep)->write(st.keep);
      if (strb) ((hls::stream<S>*)strb)->write(st.strb);
      if (user) ((hls::stream<U>*)user)->write(st.user);
      if (last) ((hls::stream<L>*)last)->write(st.last);
      if (id) ((hls::stream<I>*)id)->write(st.id);
      if (dest) ((hls::stream<E>*)dest)->write(st.dest);
    }

    static void fromSC(void* data, void* keep, void* strb, void* user, void* last, void* id, void* dest, void* axis)
    {
      ST st;
      if (data) ((hls::stream<A>*)data)->read(st.data);
      if (keep) ((hls::stream<K>*)keep)->read(st.keep);
      if (strb) ((hls::stream<S>*)strb)->read(st.strb);
      if (user) ((hls::stream<U>*)user)->read(st.user);
      if (last) ((hls::stream<L>*)last)->read(st.last);
      if (id) ((hls::stream<I>*)id)->read(st.id);
      if (dest) ((hls::stream<E>*)dest)->read(st.dest);
      ((hls::stream<ST>*)axis)->write(st);
    }
  };

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void move_to_SC(void* data, void* keep, void* strb, void* user, void* last,
                  void* id, void* dest, void* axis)
  {
    typedef MoveAXIS<sdata, skeep, sstrb, suser, slast, sid, sdest> M;
    while (!((hls::stream<typename M::ST>*)axis)->empty()) {
      M::toSC(data, keep, strb, user, last, id, dest, axis);
    }
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void task_move_to_SC(void* data, void* keep, void* strb, void* user, void* last,
                       void* id, void* dest, void* axis)
  {
    typedef MoveAXIS<sdata, skeep, sstrb, suser, slast, sid, sdest> M;
    hls::task(
      [=] () { M::toSC(data, keep, strb, user, last, id, dest, axis); }
    );
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void move_from_SC(void* axis, void* data, void* keep, void* strb, void* user, void* last,
                    void* id, void* dest)
  {
    typedef MoveAXIS<sdata, skeep, sstrb, suser, slast, sid, sdest> M;
    while (!((hls::stream<ap_uint<sdata>>*)data)->empty()) {
      M::fromSC(data, keep, strb, user, last, id, dest, axis);
    }
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void task_move_from_SC(void* axis, void* data, void* keep, void* strb, void* user, void* last,
                         void* id, void* dest)
  {
    typedef MoveAXIS<sdata, skeep, sstrb, suser, slast, sid, sdest> M;
    hls::task(
      [=] () { M::fromSC(data, keep, strb, user, last, id, dest, axis); }
    );
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
namespace hls::sim
{
  void task_stream_move_512(void* a, void* b)
  {
    task_stream_move<512>(a, b);
  }
}

unsigned int ap_apatb_taskIn_cap_bc;
static AESL_RUNTIME_BC __xlx_taskIn_V_size_Reader("../tv/stream_size/stream_size_in_taskIn.dat");
unsigned int ap_apatb_taskOutGlobal_cap_bc;
static AESL_RUNTIME_BC __xlx_taskOutGlobal_V_size_Reader("../tv/stream_size/stream_size_out_taskOutGlobal.dat");
using hls::sim::Byte;
struct __cosim_s64__ { char data[64]; };
extern "C" void vertex_map(Byte<8>*, Byte<8>*, Byte<8>*, Byte<8>*, int, int, int, int, __cosim_s64__*, __cosim_s64__*);
extern "C" void apatb_vertex_map_hw(volatile void * __xlx_apatb_param_mem_0, volatile void * __xlx_apatb_param_mem_1, volatile void * __xlx_apatb_param_mem_2, volatile void * __xlx_apatb_param_mem_5, volatile void * __xlx_apatb_param_taskIn, volatile void * __xlx_apatb_param_taskOutGlobal) {
using hls::sim::createStream;
  // Collect __xlx_mem_0__tmp_vec
std::vector<Byte<8>> __xlx_mem_0__tmp_vec;
for (size_t i = 0; i < 1; ++i){
__xlx_mem_0__tmp_vec.push_back(((Byte<8>*)__xlx_apatb_param_mem_0)[i]);
}
  int __xlx_size_param_mem_0 = 1;
  int __xlx_offset_param_mem_0 = 0;
  int __xlx_offset_byte_param_mem_0 = 0*8;
  // Collect __xlx_mem_1__tmp_vec
std::vector<Byte<8>> __xlx_mem_1__tmp_vec;
for (size_t i = 0; i < 1; ++i){
__xlx_mem_1__tmp_vec.push_back(((Byte<8>*)__xlx_apatb_param_mem_1)[i]);
}
  int __xlx_size_param_mem_1 = 1;
  int __xlx_offset_param_mem_1 = 0;
  int __xlx_offset_byte_param_mem_1 = 0*8;
  // Collect __xlx_mem_2__tmp_vec
std::vector<Byte<8>> __xlx_mem_2__tmp_vec;
for (size_t i = 0; i < 1; ++i){
__xlx_mem_2__tmp_vec.push_back(((Byte<8>*)__xlx_apatb_param_mem_2)[i]);
}
  int __xlx_size_param_mem_2 = 1;
  int __xlx_offset_param_mem_2 = 0;
  int __xlx_offset_byte_param_mem_2 = 0*8;
  // Collect __xlx_mem_5__tmp_vec
std::vector<Byte<8>> __xlx_mem_5__tmp_vec;
for (size_t i = 0; i < 1; ++i){
__xlx_mem_5__tmp_vec.push_back(((Byte<8>*)__xlx_apatb_param_mem_5)[i]);
}
  int __xlx_size_param_mem_5 = 1;
  int __xlx_offset_param_mem_5 = 0;
  int __xlx_offset_byte_param_mem_5 = 0*8;
auto* staskIn = createStream((hls::stream<__cosim_s64__>*)__xlx_apatb_param_taskIn);
  //Create input buffer for taskOutGlobal
  ap_apatb_taskOutGlobal_cap_bc = __xlx_taskOutGlobal_V_size_Reader.read_size();
  __cosim_s64__* __xlx_taskOutGlobal_input_buffer= new __cosim_s64__[ap_apatb_taskOutGlobal_cap_bc];
auto* staskOutGlobal = createStream((hls::stream<__cosim_s64__>*)__xlx_apatb_param_taskOutGlobal);
  // DUT call
  vertex_map(__xlx_mem_0__tmp_vec.data(), __xlx_mem_1__tmp_vec.data(), __xlx_mem_2__tmp_vec.data(), __xlx_mem_5__tmp_vec.data(), __xlx_offset_byte_param_mem_0, __xlx_offset_byte_param_mem_1, __xlx_offset_byte_param_mem_2, __xlx_offset_byte_param_mem_5, staskIn->data<__cosim_s64__>(), staskOutGlobal->data<__cosim_s64__>());
// print __xlx_apatb_param_mem_0
for (size_t i = 0; i < __xlx_size_param_mem_0; ++i) {
((Byte<8>*)__xlx_apatb_param_mem_0)[i] = __xlx_mem_0__tmp_vec[__xlx_offset_param_mem_0+i];
}
// print __xlx_apatb_param_mem_1
for (size_t i = 0; i < __xlx_size_param_mem_1; ++i) {
((Byte<8>*)__xlx_apatb_param_mem_1)[i] = __xlx_mem_1__tmp_vec[__xlx_offset_param_mem_1+i];
}
// print __xlx_apatb_param_mem_2
for (size_t i = 0; i < __xlx_size_param_mem_2; ++i) {
((Byte<8>*)__xlx_apatb_param_mem_2)[i] = __xlx_mem_2__tmp_vec[__xlx_offset_param_mem_2+i];
}
// print __xlx_apatb_param_mem_5
for (size_t i = 0; i < __xlx_size_param_mem_5; ++i) {
((Byte<8>*)__xlx_apatb_param_mem_5)[i] = __xlx_mem_5__tmp_vec[__xlx_offset_param_mem_5+i];
}
staskIn->transfer((hls::stream<__cosim_s64__>*)__xlx_apatb_param_taskIn);
staskOutGlobal->transfer((hls::stream<__cosim_s64__>*)__xlx_apatb_param_taskOutGlobal);
}
