; ModuleID = '/home/eryilmaz/repos/fpl26-aie/hls/pageRankReduce/pagerankreduce/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<vertex_map_args, 0>" = type { %struct.vertex_map_args }
%struct.vertex_map_args = type { i64, i64, i64, i64, i32, i32, float, [16 x i8] }
%"class.hls::stream<pageRankReduce_args, 0>" = type { %struct.pageRankReduce_args }
%struct.pageRankReduce_args = type { float, i32, i64, i64, i64, i64, float, i32, i32, float, i64 }
%"class.hls::stream<unsigned long, 0>" = type { i64 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_pageRankReduce_ir(%"class.hls::stream<vertex_map_args, 0>"* noalias nocapture nonnull dereferenceable(64) %taskOutGlobal, %"class.hls::stream<pageRankReduce_args, 0>"* noalias nocapture nonnull dereferenceable(64) %taskIn, %"class.hls::stream<unsigned long, 0>"* noalias nocapture nonnull dereferenceable(8) %argOut) local_unnamed_addr #1 {
entry:
  %taskOutGlobal_copy = alloca %"class.hls::stream<vertex_map_args, 0>", align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(%"class.hls::stream<vertex_map_args, 0>"* %taskOutGlobal_copy, i32 0) ]
  %taskIn_copy = alloca %"class.hls::stream<pageRankReduce_args, 0>", align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(%"class.hls::stream<pageRankReduce_args, 0>"* %taskIn_copy, i32 0) ]
  %argOut_copy = alloca i64, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i64* %argOut_copy, i32 0) ]
  call fastcc void @copy_in(%"class.hls::stream<vertex_map_args, 0>"* nonnull %taskOutGlobal, %"class.hls::stream<vertex_map_args, 0>"* nonnull align 512 %taskOutGlobal_copy, %"class.hls::stream<pageRankReduce_args, 0>"* nonnull %taskIn, %"class.hls::stream<pageRankReduce_args, 0>"* nonnull align 512 %taskIn_copy, %"class.hls::stream<unsigned long, 0>"* nonnull %argOut, i64* nonnull align 512 %argOut_copy)
  call void @apatb_pageRankReduce_hw(%"class.hls::stream<vertex_map_args, 0>"* %taskOutGlobal_copy, %"class.hls::stream<pageRankReduce_args, 0>"* %taskIn_copy, i64* %argOut_copy)
  call void @copy_back(%"class.hls::stream<vertex_map_args, 0>"* %taskOutGlobal, %"class.hls::stream<vertex_map_args, 0>"* %taskOutGlobal_copy, %"class.hls::stream<pageRankReduce_args, 0>"* %taskIn, %"class.hls::stream<pageRankReduce_args, 0>"* %taskIn_copy, %"class.hls::stream<unsigned long, 0>"* %argOut, i64* %argOut_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<vertex_map_args, 0>"* noalias "unpacked"="0", %"class.hls::stream<vertex_map_args, 0>"* noalias align 512 "unpacked"="1", %"class.hls::stream<pageRankReduce_args, 0>"* noalias "unpacked"="2", %"class.hls::stream<pageRankReduce_args, 0>"* noalias align 512 "unpacked"="3", %"class.hls::stream<unsigned long, 0>"* noalias "unpacked"="4", i64* noalias nocapture align 512 "unpacked"="5.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<vertex_map_args, 0>"(%"class.hls::stream<vertex_map_args, 0>"* align 512 %1, %"class.hls::stream<vertex_map_args, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<pageRankReduce_args, 0>"(%"class.hls::stream<pageRankReduce_args, 0>"* align 512 %3, %"class.hls::stream<pageRankReduce_args, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned long, 0>"(i64* align 512 %5, %"class.hls::stream<unsigned long, 0>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<vertex_map_args, 0>"(%"class.hls::stream<vertex_map_args, 0>"* noalias align 512 %dst, %"class.hls::stream<vertex_map_args, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<vertex_map_args, 0>"* %dst, null
  %1 = icmp eq %"class.hls::stream<vertex_map_args, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<vertex_map_args, 0>"(%"class.hls::stream<vertex_map_args, 0>"* nonnull align 512 %dst, %"class.hls::stream<vertex_map_args, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<vertex_map_args, 0>"(%"class.hls::stream<vertex_map_args, 0>"* noalias nocapture align 512, %"class.hls::stream<vertex_map_args, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<vertex_map_args, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<vertex_map_args, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<vertex_map_args, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<vertex_map_args, 0>"* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<vertex_map_args, 0>", %"class.hls::stream<vertex_map_args, 0>"* %2
  %8 = bitcast %"class.hls::stream<vertex_map_args, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<vertex_map_args, 0>"* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<pageRankReduce_args, 0>"(%"class.hls::stream<pageRankReduce_args, 0>"* noalias align 512 %dst, %"class.hls::stream<pageRankReduce_args, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<pageRankReduce_args, 0>"* %dst, null
  %1 = icmp eq %"class.hls::stream<pageRankReduce_args, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<pageRankReduce_args, 0>"(%"class.hls::stream<pageRankReduce_args, 0>"* nonnull align 512 %dst, %"class.hls::stream<pageRankReduce_args, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<pageRankReduce_args, 0>"(%"class.hls::stream<pageRankReduce_args, 0>"* noalias nocapture align 512, %"class.hls::stream<pageRankReduce_args, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<pageRankReduce_args, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<pageRankReduce_args, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<pageRankReduce_args, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<pageRankReduce_args, 0>"* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<pageRankReduce_args, 0>", %"class.hls::stream<pageRankReduce_args, 0>"* %2
  %8 = bitcast %"class.hls::stream<pageRankReduce_args, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<pageRankReduce_args, 0>"* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned long, 0>"(i64* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<unsigned long, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<unsigned long, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<unsigned long, 0>"(i64* align 512 %dst, %"class.hls::stream<unsigned long, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<unsigned long, 0>"(i64* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<unsigned long, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<unsigned long, 0>"
  %3 = alloca i64
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<unsigned long, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<unsigned long, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<unsigned long, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<unsigned long, 0>", %"class.hls::stream<unsigned long, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<unsigned long, 0>" %8, 0
  store i64 %.evi, i64* %3
  %9 = bitcast i64* %3 to i8*
  %10 = bitcast i64* %0 to i8*
  call void @fpga_fifo_push_8(i8* %9, i8* %10)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<vertex_map_args, 0>"* noalias "unpacked"="0", %"class.hls::stream<vertex_map_args, 0>"* noalias align 512 "unpacked"="1", %"class.hls::stream<pageRankReduce_args, 0>"* noalias "unpacked"="2", %"class.hls::stream<pageRankReduce_args, 0>"* noalias align 512 "unpacked"="3", %"class.hls::stream<unsigned long, 0>"* noalias "unpacked"="4", i64* noalias nocapture align 512 "unpacked"="5.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<vertex_map_args, 0>"(%"class.hls::stream<vertex_map_args, 0>"* %0, %"class.hls::stream<vertex_map_args, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<pageRankReduce_args, 0>"(%"class.hls::stream<pageRankReduce_args, 0>"* %2, %"class.hls::stream<pageRankReduce_args, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned long, 0>.4"(%"class.hls::stream<unsigned long, 0>"* %4, i64* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned long, 0>.4"(%"class.hls::stream<unsigned long, 0>"* noalias "unpacked"="0" %dst, i64* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<unsigned long, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<unsigned long, 0>.7"(%"class.hls::stream<unsigned long, 0>"* nonnull %dst, i64* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<unsigned long, 0>.7"(%"class.hls::stream<unsigned long, 0>"* noalias nocapture "unpacked"="0", i64* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
entry:
  %2 = alloca i64
  %3 = alloca %"class.hls::stream<unsigned long, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i64* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i64* %2 to i8*
  %7 = bitcast i64* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile i64, i64* %2
  %.ivi = insertvalue %"class.hls::stream<unsigned long, 0>" undef, i64 %8, 0
  store %"class.hls::stream<unsigned long, 0>" %.ivi, %"class.hls::stream<unsigned long, 0>"* %3
  %9 = bitcast %"class.hls::stream<unsigned long, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<unsigned long, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %9, i8* %10)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_pageRankReduce_hw(%"class.hls::stream<vertex_map_args, 0>"*, %"class.hls::stream<pageRankReduce_args, 0>"*, i64*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<vertex_map_args, 0>"* noalias "unpacked"="0", %"class.hls::stream<vertex_map_args, 0>"* noalias align 512 "unpacked"="1", %"class.hls::stream<pageRankReduce_args, 0>"* noalias "unpacked"="2", %"class.hls::stream<pageRankReduce_args, 0>"* noalias align 512 "unpacked"="3", %"class.hls::stream<unsigned long, 0>"* noalias "unpacked"="4", i64* noalias nocapture align 512 "unpacked"="5.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<vertex_map_args, 0>"(%"class.hls::stream<vertex_map_args, 0>"* %0, %"class.hls::stream<vertex_map_args, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<pageRankReduce_args, 0>"(%"class.hls::stream<pageRankReduce_args, 0>"* %2, %"class.hls::stream<pageRankReduce_args, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned long, 0>.4"(%"class.hls::stream<unsigned long, 0>"* %4, i64* align 512 %5)
  ret void
}

declare void @pageRankReduce_hw_stub(%"class.hls::stream<vertex_map_args, 0>"* noalias nocapture nonnull, %"class.hls::stream<pageRankReduce_args, 0>"* noalias nocapture nonnull, %"class.hls::stream<unsigned long, 0>"* noalias nocapture nonnull)

define void @pageRankReduce_hw_stub_wrapper(%"class.hls::stream<vertex_map_args, 0>"*, %"class.hls::stream<pageRankReduce_args, 0>"*, i64*) #6 {
entry:
  %3 = call i8* @malloc(i64 8)
  %4 = bitcast i8* %3 to %"class.hls::stream<unsigned long, 0>"*
  call void @copy_out(%"class.hls::stream<vertex_map_args, 0>"* null, %"class.hls::stream<vertex_map_args, 0>"* %0, %"class.hls::stream<pageRankReduce_args, 0>"* null, %"class.hls::stream<pageRankReduce_args, 0>"* %1, %"class.hls::stream<unsigned long, 0>"* %4, i64* %2)
  call void @pageRankReduce_hw_stub(%"class.hls::stream<vertex_map_args, 0>"* %0, %"class.hls::stream<pageRankReduce_args, 0>"* %1, %"class.hls::stream<unsigned long, 0>"* %4)
  call void @copy_in(%"class.hls::stream<vertex_map_args, 0>"* null, %"class.hls::stream<vertex_map_args, 0>"* %0, %"class.hls::stream<pageRankReduce_args, 0>"* null, %"class.hls::stream<pageRankReduce_args, 0>"* %1, %"class.hls::stream<unsigned long, 0>"* %4, i64* %2)
  call void @free(i8* %3)
  ret void
}

declare i1 @fpga_fifo_not_empty_64(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="512" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="64" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
