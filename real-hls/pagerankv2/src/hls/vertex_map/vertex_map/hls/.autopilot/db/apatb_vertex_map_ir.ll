; ModuleID = '/home/eryilmaz/repos/fpl26-aie/real-hls/pagerankv2/src/hls/vertex_map/vertex_map/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<vertex_map_args, 0>" = type { %struct.vertex_map_args }
%struct.vertex_map_args = type { i64, i64, i64, i64, i32, i32, float, [16 x i8] }
%"class.hls::stream<unsigned long, 0>" = type { i64 }

@wrapper.buffer = internal global [8 x i8] zeroinitializer
@wrapper.buffer.2 = internal global i8 0
@wrapper.buffer.3 = internal global i8 0
@wrapper.buffer.4 = internal global i8 0
@wrapper.buffer.5 = internal global i8 0
@wrapper.buffer.6 = internal global %"class.hls::stream<vertex_map_args, 0>" zeroinitializer
@wrapper.buffer.7 = internal global i64 0

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_vertex_map_ir(i8* noalias nonnull "maxi" %mem_0, i8* noalias nonnull "maxi" %mem_1, i8* noalias nonnull "maxi" %mem_2, i8* noalias nonnull "maxi" %mem_5, %"class.hls::stream<vertex_map_args, 0>"* noalias nonnull dereferenceable(64) %taskIn, %"class.hls::stream<unsigned long, 0>"* noalias nonnull dereferenceable(8) %argOut) local_unnamed_addr #1 {
entry:
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<vertex_map_args, 0>"* @wrapper.buffer.6, i32 0) ]
  call void @llvm.sideeffect() #9 [ "stream_interface"(i64* @wrapper.buffer.7, i32 0) ]
  call fastcc void @copy_in(i8* nonnull %mem_0, i8* nonnull align 512 @wrapper.buffer.2, i8* nonnull %mem_1, i8* nonnull align 512 @wrapper.buffer.3, i8* nonnull %mem_2, i8* nonnull align 512 @wrapper.buffer.4, i8* nonnull %mem_5, i8* nonnull align 512 @wrapper.buffer.5, %"class.hls::stream<vertex_map_args, 0>"* nonnull %taskIn, %"class.hls::stream<vertex_map_args, 0>"* nonnull align 512 @wrapper.buffer.6, %"class.hls::stream<unsigned long, 0>"* nonnull %argOut, i64* nonnull align 512 null)
  call void @apatb_vertex_map_hw(i8* @wrapper.buffer.2, i8* @wrapper.buffer.3, i8* @wrapper.buffer.4, i8* @wrapper.buffer.5, %"class.hls::stream<vertex_map_args, 0>"* @wrapper.buffer.6, i64* @wrapper.buffer.7)
  call void @copy_back(i8* %mem_0, i8* @wrapper.buffer.2, i8* %mem_1, i8* @wrapper.buffer.3, i8* %mem_2, i8* @wrapper.buffer.4, i8* %mem_5, i8* @wrapper.buffer.5, %"class.hls::stream<vertex_map_args, 0>"* %taskIn, %"class.hls::stream<vertex_map_args, 0>"* @wrapper.buffer.6, %"class.hls::stream<unsigned long, 0>"* %argOut, i64* @wrapper.buffer.7)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(i8* noalias readonly "unpacked"="0", i8* noalias align 512 "unpacked"="1", i8* noalias readonly "unpacked"="2", i8* noalias align 512 "unpacked"="3", i8* noalias readonly "unpacked"="4", i8* noalias align 512 "unpacked"="5", i8* noalias readonly "unpacked"="6", i8* noalias align 512 "unpacked"="7", %"class.hls::stream<vertex_map_args, 0>"* noalias "unpacked"="8", %"class.hls::stream<vertex_map_args, 0>"* noalias align 512 "unpacked"="9", %"class.hls::stream<unsigned long, 0>"* noalias "unpacked"="10", i64* noalias nocapture align 512 "unpacked"="11.0") unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %1, i8* %0)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %3, i8* %2)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %5, i8* %4)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %7, i8* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<vertex_map_args, 0>"(%"class.hls::stream<vertex_map_args, 0>"* align 512 %9, %"class.hls::stream<vertex_map_args, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned long, 0>"(i64* align 512 %11, %"class.hls::stream<unsigned long, 0>"* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i8(i8* noalias align 512 %dst, i8* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq i8* %dst, null
  %1 = icmp eq i8* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i8, i8* %src, align 1
  store i8 %3, i8* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<vertex_map_args, 0>"(%"class.hls::stream<vertex_map_args, 0>"* noalias align 512 %dst, %"class.hls::stream<vertex_map_args, 0>"* noalias %src) unnamed_addr #4 {
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
define dso_local fastcc void @"streamcpy_hls.p0class.hls::stream<vertex_map_args, 0>"(%"class.hls::stream<vertex_map_args, 0>"* noalias nocapture align 512, %"class.hls::stream<vertex_map_args, 0>"* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = icmp eq %"class.hls::stream<vertex_map_args, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<vertex_map_args, 0>"* %1, null
  %4 = or i1 %3, %2
  br i1 %4, label %return, label %move

move:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream<vertex_map_args, 0>"* %0 to i8*
  %6 = bitcast %"class.hls::stream<vertex_map_args, 0>"* %1 to i8*
  call void @_ZN3hls3sim20task_stream_move_512EPvS1_(i8* %5, i8* %6)
  br label %return

return:                                           ; preds = %move, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned long, 0>"(i64* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<unsigned long, 0>"* noalias "unpacked"="1" %src) unnamed_addr #4 {
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
define dso_local fastcc void @"streamcpy_hls.p0class.hls::stream<unsigned long, 0>"(i64* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<unsigned long, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #5 {
entry:
  %2 = icmp eq i64* %0, null
  %3 = icmp eq %"class.hls::stream<unsigned long, 0>"* %1, null
  %4 = or i1 %3, %2
  br i1 %4, label %return, label %move

move:                                             ; preds = %entry
  %5 = bitcast i64* %0 to i8*
  %6 = bitcast %"class.hls::stream<unsigned long, 0>"* %1 to i8*
  call void @_ZN3hls3sim19task_stream_move_64EPvS1_(i8* %5, i8* %6)
  br label %return

return:                                           ; preds = %move, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(i8* noalias "unpacked"="0", i8* noalias readonly align 512 "unpacked"="1", i8* noalias "unpacked"="2", i8* noalias readonly align 512 "unpacked"="3", i8* noalias "unpacked"="4", i8* noalias readonly align 512 "unpacked"="5", i8* noalias "unpacked"="6", i8* noalias readonly align 512 "unpacked"="7", %"class.hls::stream<vertex_map_args, 0>"* noalias "unpacked"="8", %"class.hls::stream<vertex_map_args, 0>"* noalias align 512 "unpacked"="9", %"class.hls::stream<unsigned long, 0>"* noalias "unpacked"="10", i64* noalias nocapture align 512 "unpacked"="11.0") unnamed_addr #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0i8(i8* %0, i8* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %2, i8* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %4, i8* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %6, i8* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<vertex_map_args, 0>"(%"class.hls::stream<vertex_map_args, 0>"* %8, %"class.hls::stream<vertex_map_args, 0>"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned long, 0>.24"(%"class.hls::stream<unsigned long, 0>"* %10, i64* align 512 %11)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned long, 0>.24"(%"class.hls::stream<unsigned long, 0>"* noalias "unpacked"="0" %dst, i64* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<unsigned long, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<unsigned long, 0>.27"(%"class.hls::stream<unsigned long, 0>"* nonnull %dst, i64* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define dso_local fastcc void @"streamcpy_hls.p0class.hls::stream<unsigned long, 0>.27"(%"class.hls::stream<unsigned long, 0>"* noalias nocapture "unpacked"="0", i64* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #5 {
entry:
  %2 = icmp eq %"class.hls::stream<unsigned long, 0>"* %0, null
  %3 = icmp eq i64* %1, null
  %4 = or i1 %3, %2
  br i1 %4, label %return, label %move

move:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream<unsigned long, 0>"* %0 to i8*
  %6 = bitcast i64* %1 to i8*
  call void @_ZN3hls3sim19task_stream_move_64EPvS1_(i8* %5, i8* %6)
  br label %return

return:                                           ; preds = %move, %entry
  ret void
}

declare void @_ZN3hls3sim20task_stream_move_512EPvS1_(i8*, i8*)

declare void @_ZN3hls3sim19task_stream_move_64EPvS1_(i8*, i8*)

declare void @apatb_vertex_map_hw(i8*, i8*, i8*, i8*, %"class.hls::stream<vertex_map_args, 0>"*, i64*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(i8* noalias "unpacked"="0", i8* noalias readonly align 512 "unpacked"="1", i8* noalias "unpacked"="2", i8* noalias readonly align 512 "unpacked"="3", i8* noalias "unpacked"="4", i8* noalias readonly align 512 "unpacked"="5", i8* noalias "unpacked"="6", i8* noalias readonly align 512 "unpacked"="7", %"class.hls::stream<vertex_map_args, 0>"* noalias "unpacked"="8", %"class.hls::stream<vertex_map_args, 0>"* noalias align 512 "unpacked"="9", %"class.hls::stream<unsigned long, 0>"* noalias "unpacked"="10", i64* noalias nocapture align 512 "unpacked"="11.0") unnamed_addr #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0i8(i8* %0, i8* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %2, i8* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %4, i8* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %6, i8* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<vertex_map_args, 0>"(%"class.hls::stream<vertex_map_args, 0>"* %8, %"class.hls::stream<vertex_map_args, 0>"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned long, 0>.24"(%"class.hls::stream<unsigned long, 0>"* %10, i64* align 512 %11)
  ret void
}

declare void @vertex_map_hw_stub(i8* noalias nonnull, i8* noalias nonnull, i8* noalias nonnull, i8* noalias nonnull, %"class.hls::stream<vertex_map_args, 0>"* noalias nonnull, %"class.hls::stream<unsigned long, 0>"* noalias nonnull)

define void @vertex_map_hw_stub_wrapper(i8*, i8*, i8*, i8*, %"class.hls::stream<vertex_map_args, 0>"*, i64*) #7 {
entry:
  %6 = bitcast i8* getelementptr inbounds ([8 x i8], [8 x i8]* @wrapper.buffer, i32 0, i32 0) to %"class.hls::stream<unsigned long, 0>"*
  call void @copy_out(i8* null, i8* %0, i8* null, i8* %1, i8* null, i8* %2, i8* null, i8* %3, %"class.hls::stream<vertex_map_args, 0>"* null, %"class.hls::stream<vertex_map_args, 0>"* %4, %"class.hls::stream<unsigned long, 0>"* %6, i64* null)
  call void @vertex_map_hw_stub(i8* %0, i8* %1, i8* %2, i8* %3, %"class.hls::stream<vertex_map_args, 0>"* %4, %"class.hls::stream<unsigned long, 0>"* %6)
  call void @copy_in(i8* null, i8* %0, i8* null, i8* %1, i8* null, i8* %2, i8* null, i8* %3, %"class.hls::stream<vertex_map_args, 0>"* null, %"class.hls::stream<vertex_map_args, 0>"* %4, %"class.hls::stream<unsigned long, 0>"* %6, i64* %5)
  ret void
}

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="512" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="64" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!has_MT_tasks = !{}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
