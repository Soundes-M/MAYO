; ModuleID = '/home/osm/Documents/SECT-MAYO/MAYO/HLS/computeP2/solution2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #0

; Function Attrs: noinline
define void @apatb_computeP2_ir(i8* %oil_space, i8* %P1, i8* %P2) local_unnamed_addr #1 {
entry:
  %oil_space_copy = alloca [336 x i8], align 512
  %malloccall = tail call i8* @malloc(i64 115920)
  %P1_copy = bitcast i8* %malloccall to [115920 x i8]*
  %P2_copy = alloca [1260 x i8], align 512
  %0 = bitcast i8* %oil_space to [336 x i8]*
  %1 = bitcast i8* %P1 to [115920 x i8]*
  %2 = bitcast i8* %P2 to [1260 x i8]*
  call fastcc void @copy_in([336 x i8]* %0, [336 x i8]* nonnull align 512 %oil_space_copy, [115920 x i8]* %1, [115920 x i8]* %P1_copy, [1260 x i8]* %2, [1260 x i8]* nonnull align 512 %P2_copy)
  %3 = getelementptr inbounds [336 x i8], [336 x i8]* %oil_space_copy, i32 0, i32 0
  %4 = getelementptr inbounds [1260 x i8], [1260 x i8]* %P2_copy, i32 0, i32 0
  call void @apatb_computeP2_hw(i8* %3, i8* %malloccall, i8* %4)
  call fastcc void @copy_out([336 x i8]* %0, [336 x i8]* nonnull align 512 %oil_space_copy, [115920 x i8]* %1, [115920 x i8]* %P1_copy, [1260 x i8]* %2, [1260 x i8]* nonnull align 512 %P2_copy)
  tail call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([336 x i8]* readonly, [336 x i8]* noalias align 512, [115920 x i8]* readonly, [115920 x i8]* noalias, [1260 x i8]* readonly, [1260 x i8]* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a336i8([336 x i8]* align 512 %1, [336 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a115920i8([115920 x i8]* %3, [115920 x i8]* %2)
  call fastcc void @onebyonecpy_hls.p0a1260i8([1260 x i8]* align 512 %5, [1260 x i8]* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a336i8([336 x i8]* noalias align 512, [336 x i8]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [336 x i8]* %0, null
  %3 = icmp eq [336 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [336 x i8], [336 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [336 x i8], [336 x i8]* %1, i64 0, i64 %for.loop.idx1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr, i64 1, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 336
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a115920i8([115920 x i8]* noalias, [115920 x i8]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [115920 x i8]* %0, null
  %3 = icmp eq [115920 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [115920 x i8], [115920 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [115920 x i8], [115920 x i8]* %1, i64 0, i64 %for.loop.idx1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr, i64 1, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 115920
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a1260i8([1260 x i8]* noalias align 512, [1260 x i8]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [1260 x i8]* %0, null
  %3 = icmp eq [1260 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1260 x i8], [1260 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1260 x i8], [1260 x i8]* %1, i64 0, i64 %for.loop.idx1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr, i64 1, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1260
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([336 x i8]*, [336 x i8]* noalias readonly align 512, [115920 x i8]*, [115920 x i8]* noalias readonly, [1260 x i8]*, [1260 x i8]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a336i8([336 x i8]* %0, [336 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a115920i8([115920 x i8]* %2, [115920 x i8]* %3)
  call fastcc void @onebyonecpy_hls.p0a1260i8([1260 x i8]* %4, [1260 x i8]* align 512 %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_computeP2_hw(i8*, i8*, i8*)

define void @computeP2_hw_stub_wrapper(i8*, i8*, i8*) #5 {
entry:
  %3 = bitcast i8* %0 to [336 x i8]*
  %4 = bitcast i8* %1 to [115920 x i8]*
  %5 = bitcast i8* %2 to [1260 x i8]*
  call void @copy_out([336 x i8]* null, [336 x i8]* %3, [115920 x i8]* null, [115920 x i8]* %4, [1260 x i8]* null, [1260 x i8]* %5)
  %6 = bitcast [336 x i8]* %3 to i8*
  %7 = bitcast [115920 x i8]* %4 to i8*
  %8 = bitcast [1260 x i8]* %5 to i8*
  call void @computeP2_hw_stub(i8* %6, i8* %7, i8* %8)
  call void @copy_in([336 x i8]* null, [336 x i8]* %3, [115920 x i8]* null, [115920 x i8]* %4, [1260 x i8]* null, [1260 x i8]* %5)
  ret void
}

declare void @computeP2_hw_stub(i8*, i8*, i8*)

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
