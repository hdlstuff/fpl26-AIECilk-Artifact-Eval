
#ifndef FUNCTION_KERNELS_H
#define FUNCTION_KERNELS_H

  void pagerank(input_stream_uint32 *taskIn, output_stream_uint32 *argOut, output_stream_uint32 *taskOutGlobal);

  void readvertex(input_stream_uint32 *taskIn, output_stream_uint32 *readSingle64Out, output_stream_uint32 *taskOut);

  void readneighborids(input_stream_uint32 *taskIn, input_stream_uint32 *readSingle64In, output_stream_uint32 *taskOut, output_stream_uint32 *readStream32Out);

  void readneighbors(input_stream_uint32 *taskIn, input_stream_uint32 *readStream32In, output_stream_uint32 *taskOut, output_stream_uint32 *readSingle32Out);

  void process(input_stream_uint32 *taskIn, input_stream_uint32 *readSingle32In, output_stream_uint32 *taskOutGlobal, output_stream_uint32 *writeSingle32Out);

#endif
