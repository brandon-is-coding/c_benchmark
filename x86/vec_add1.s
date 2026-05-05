	.text
	.file	"add_vec1"
	.section	.ltext,"axl",@progbits
	.globl	julia_add_vec1_636              # -- Begin function julia_add_vec1_636
	.p2align	4, 0x90
	.type	julia_add_vec1_636,@function
julia_add_vec1_636:                     # @julia_add_vec1_636
; Function Signature: add_vec1(Array{Int32, 1}, Array{Int32, 1}, Int32)
; ┌ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:4 within `add_vec1`
	.cfi_startproc
# %bb.0:                                # %top
	#DEBUG_VALUE: add_vec1:A <- [$rcx+0]
	#DEBUG_VALUE: add_vec1:B <- [$rdx+0]
	#DEBUG_VALUE: add_vec1:n <- $r8d
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rsi
	push	rdi
	push	rbx
	sub	rsp, 120
	.cfi_offset rbx, -72
	.cfi_offset rdi, -64
	.cfi_offset rsi, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	movabs	r14, 140731778499152
	vpxor	xmm0, xmm0, xmm0
	mov	qword ptr [rbp - 104], rcx      # 8-byte Spill
	mov	r15d, r8d
	mov	rsi, rdx
	lea	rax, [r14 + 373802672]
	vmovdqa	xmmword ptr [rbp - 96], xmm0
	mov	qword ptr [rbp - 80], 0
	call	rax
	mov	qword ptr [rbp - 96], 4
	mov	rdi, rax
	lea	rcx, [rbp - 96]
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:5 within `add_vec1`
; │┌ @ baseext.jl:23 within `Array`
; ││┌ @ boot.jl:957 within `Int64`
; │││┌ @ boot.jl:876 within `toInt64`
	movsxd	r12, r15d
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 88], rax
	mov	qword ptr [rdi], rcx
; ││└└
; ││ @ baseext.jl:23 within `Array` @ boot.jl:647
; ││┌ @ boot.jl:588 within `GenericMemory`
	test	r12d, r12d
	je	.LBB0_1
# %bb.14:                               # %nonemptymem
	js	.LBB0_28
# %bb.15:                               # %pass
	mov	rcx, qword ptr [rdi + 16]
	lea	rdx, [4*r12]
	movabs	r8, offset ".L+Core.GenericMemory#639.jit"
	movabs	rax, offset jl_alloc_genericmemory_unchecked
	call	rax
	mov	r15, rax
	mov	qword ptr [rax], r12
	jmp	.LBB0_16
.LBB0_1:
	movabs	r15, offset ".Ljl_global#638.jit"
.LBB0_16:                               # %retval
; ││└
; ││ @ baseext.jl:23 within `Array` @ boot.jl:648
; ││┌ @ boot.jl:593 within `memoryref`
	mov	r13, qword ptr [r15 + 8]
	mov	qword ptr [rbp - 80], r15
; ││└
	movabs	rax, offset ijl_gc_small_alloc
	mov	edx, 408
	mov	r8d, 32
	mov	qword ptr [rbp - 120], rdi      # 8-byte Spill
	mov	r9, r14
	mov	rcx, qword ptr [rdi + 16]
	call	rax
	mov	qword ptr [rax - 8], r14
	mov	qword ptr [rax], r13
	mov	qword ptr [rax + 8], r15
	mov	qword ptr [rax + 16], r12
; ││ @ baseext.jl:23 within `Array` @ boot.jl:647
; ││┌ @ boot.jl:588 within `GenericMemory`
	test	r12d, r12d
; │└└
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:6 within `add_vec1`
	je	.LBB0_13
# %bb.17:                               # %L24.preheader
	mov	rcx, qword ptr [rbp - 104]      # 8-byte Reload
	mov	r10, qword ptr [rsi + 16]
	mov	r9, qword ptr [rsi]
	mov	qword ptr [rbp - 64], rsi       # 8-byte Spill
	mov	r11, -1
	mov	ebx, r12d
	mov	r8, qword ptr [rcx + 16]
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:7 within `add_vec1`
; │┌ @ essentials.jl:919 within `getindex`
	mov	r14, r10
	sar	r14, 63
	mov	rsi, r10
	mov	rdx, qword ptr [rcx]
	and	r14, r10
	sub	rsi, r14
	test	r14, r14
	cmovs	r14, r11
	inc	r14
	mov	rcx, r8
	sar	rcx, 63
	imul	r14, rsi
	mov	rdi, r8
	and	rcx, r8
	sub	rdi, rcx
	test	rcx, rcx
	cmovs	rcx, r11
	inc	rcx
	imul	rcx, rdi
	mov	rdi, r12
	cmp	r14, rcx
	cmovb	rcx, r14
	sar	rdi, 63
	mov	r14, r12
	and	rdi, r12
	sub	r14, rdi
	test	rdi, rdi
	cmovs	rdi, r11
	inc	rdi
	imul	rdi, r14
	mov	r14, rbx
	cmp	rcx, rdi
	cmovb	rdi, rcx
	cmp	rdi, rbx
	cmovb	r14, rdi
	test	rdi, rdi
	je	.LBB0_18
# %bb.19:                               # %L77.preheader
; │└
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:8 within `add_vec1`
	cmp	r14, 1
	mov	r15, r14
	mov	r11d, 1
	adc	r15, 0
	cmp	r14, 64
	jae	.LBB0_21
# %bb.20:
	mov	rdi, qword ptr [rbp - 64]       # 8-byte Reload
.LBB0_27:                               # %scalar.ph
	dec	r11
	mov	r15, r11
	.p2align	4, 0x90
.LBB0_5:                                # %L77
                                        # =>This Inner Loop Header: Depth=1
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:7 within `add_vec1`
; │┌ @ essentials.jl:920 within `getindex`
	mov	r11d, dword ptr [r9 + 4*r15]
; │└
; │┌ @ int.jl:87 within `+`
	add	r11d, dword ptr [rdx + 4*r15]
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:991 within `_setindex!`
	mov	dword ptr [r13 + 4*r15], r11d
; │└└
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:8 within `add_vec1`
	inc	r15
	cmp	r15, r14
	jb	.LBB0_5
# %bb.6:                                # %main.exit.selector.loopexit
	lea	r11, [r15 + 1]
.LBB0_7:                                # %main.exit.selector
	cmp	r15, rbx
	jae	.LBB0_13
	jmp	.LBB0_8
.LBB0_18:
	mov	rdi, qword ptr [rbp - 64]       # 8-byte Reload
	mov	r11d, 1
.LBB0_8:                                # %main.pseudo.exit
	dec	r11
	.p2align	4, 0x90
.LBB0_9:                                # %L24.postloop
                                        # =>This Inner Loop Header: Depth=1
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:7 within `add_vec1`
; │┌ @ essentials.jl:919 within `getindex`
	cmp	r11, r8
	jae	.LBB0_2
# %bb.10:                               # %L40.postloop
                                        #   in Loop: Header=BB0_9 Depth=1
	cmp	r11, r10
	jae	.LBB0_3
# %bb.11:                               # %L58.postloop
                                        #   in Loop: Header=BB0_9 Depth=1
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:990 within `_setindex!`
; │││┌ @ int.jl:519 within `<`
	cmp	r11, r12
; │││└
	jae	.LBB0_4
# %bb.12:                               # %L77.postloop
                                        #   in Loop: Header=BB0_9 Depth=1
; │└└
; │┌ @ essentials.jl:920 within `getindex`
	mov	esi, dword ptr [r9 + 4*r11]
; │└
; │┌ @ int.jl:87 within `+`
	add	esi, dword ptr [rdx + 4*r11]
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:991 within `_setindex!`
	mov	dword ptr [r13 + 4*r11], esi
; │└└
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:8 within `add_vec1`
; │┌ @ range.jl:921 within `iterate`
; ││┌ @ promotion.jl:637 within `==`
	inc	r11
	cmp	rbx, r11
; │└└
	jne	.LBB0_9
.LBB0_13:                               # %L93
	mov	rcx, qword ptr [rbp - 88]
	mov	rdx, qword ptr [rbp - 120]      # 8-byte Reload
	mov	qword ptr [rdx], rcx
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:9 within `add_vec1`
	add	rsp, 120
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	vzeroupper
	ret
.LBB0_21:                               # %vector.memcheck
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:8 within `add_vec1`
	lea	rsi, [rdx + 4*r14]
	lea	rcx, [r9 + 4*r14]
	lea	rdi, [r13 + 4*r14]
	cmp	r13, rsi
	mov	qword ptr [rbp - 112], rcx      # 8-byte Spill
	setb	byte ptr [rbp - 72]             # 1-byte Folded Spill
	cmp	rdx, rdi
	setb	cl
	cmp	r13, qword ptr [rbp - 112]      # 8-byte Folded Reload
	setb	sil
	cmp	r9, rdi
	setb	dil
	test	byte ptr [rbp - 72], cl         # 1-byte Folded Reload
	jne	.LBB0_22
# %bb.23:                               # %vector.memcheck
	and	sil, dil
	mov	rdi, qword ptr [rbp - 64]       # 8-byte Reload
	jne	.LBB0_27
# %bb.24:                               # %vector.ph
	mov	r11d, r15d
	mov	rdi, r15
	shr	rdi, 6
	and	r11d, -64
	xor	esi, esi
	mov	qword ptr [rbp - 72], r11       # 8-byte Spill
	inc	r11
	shl	rdi, 8
	.p2align	4, 0x90
.LBB0_25:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:7 within `add_vec1`
; │┌ @ essentials.jl:920 within `getindex`
	vmovdqu64	zmm0, zmmword ptr [r9 + rsi]
	vmovdqu64	zmm1, zmmword ptr [r9 + rsi + 64]
	vmovdqu64	zmm2, zmmword ptr [r9 + rsi + 128]
	vmovdqu64	zmm3, zmmword ptr [r9 + rsi + 192]
; │└
; │┌ @ int.jl:87 within `+`
	vpaddd	zmm0, zmm0, zmmword ptr [rdx + rsi]
	vpaddd	zmm1, zmm1, zmmword ptr [rdx + rsi + 64]
	vpaddd	zmm2, zmm2, zmmword ptr [rdx + rsi + 128]
	vpaddd	zmm3, zmm3, zmmword ptr [rdx + rsi + 192]
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:991 within `_setindex!`
	vmovdqu64	zmmword ptr [r13 + rsi], zmm0
	vmovdqu64	zmmword ptr [r13 + rsi + 64], zmm1
	vmovdqu64	zmmword ptr [r13 + rsi + 128], zmm2
	vmovdqu64	zmmword ptr [r13 + rsi + 192], zmm3
	add	rsi, 256
	cmp	rdi, rsi
	jne	.LBB0_25
# %bb.26:                               # %middle.block
	mov	rdi, qword ptr [rbp - 64]       # 8-byte Reload
; │└└
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:8 within `add_vec1`
	cmp	r15, qword ptr [rbp - 72]       # 8-byte Folded Reload
	je	.LBB0_7
	jmp	.LBB0_27
.LBB0_22:
	mov	rdi, qword ptr [rbp - 64]       # 8-byte Reload
	jmp	.LBB0_27
.LBB0_4:                                # %L74
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:7 within `add_vec1`
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:990 within `_setindex!`
	inc	r11
	movabs	r8, offset j_throw_boundserror_641
	lea	rdx, [rbp - 144]
	mov	rcx, rax
	mov	qword ptr [rbp - 80], rax
	mov	qword ptr [rbp - 144], r11
	vzeroupper
	call	r8
.LBB0_3:                                # %L55
; │└└
; │┌ @ essentials.jl:919 within `getindex`
	inc	r11
	movabs	rax, offset j_throw_boundserror_641
	lea	rdx, [rbp - 136]
	mov	rcx, rdi
	mov	qword ptr [rbp - 80], 0
	mov	qword ptr [rbp - 136], r11
	vzeroupper
	call	rax
.LBB0_2:                                # %L37
	mov	rcx, qword ptr [rbp - 104]      # 8-byte Reload
	inc	r11
	movabs	rax, offset j_throw_boundserror_641
	lea	rdx, [rbp - 128]
	mov	qword ptr [rbp - 80], 0
	mov	qword ptr [rbp - 128], r11
	vzeroupper
	call	rax
.LBB0_28:                               # %fail
; │└
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:5 within `add_vec1`
; │┌ @ baseext.jl:23 within `Array` @ boot.jl:647
; ││┌ @ boot.jl:588 within `GenericMemory`
	movabs	rcx, offset ".L_j_str_invalid GenericMemory siz...#1"
	movabs	rax, offset jl_argument_error
	call	rax
.Lfunc_end0:
	.size	julia_add_vec1_636, .Lfunc_end0-julia_add_vec1_636
	.cfi_endproc
; └└└
                                        # -- End function
	.type	".L_j_str_invalid GenericMemory siz...#1",@object # @"_j_str_invalid GenericMemory siz...#1"
	.section	.rodata.str1.1,"aMSl",@progbits,1
".L_j_str_invalid GenericMemory siz...#1":
	.asciz	"invalid GenericMemory size: the number of elements is either negative or too large for system address width"
	.size	".L_j_str_invalid GenericMemory siz...#1", 108

.set ".L+Core.GenericMemory#639.jit", 140731743172528
	.size	".L+Core.GenericMemory#639.jit", 8
.set ".Ljl_global#638.jit", 140731743172608
	.size	".Ljl_global#638.jit", 8
.set ".L+Core.Array#640.jit", 140731778499152
	.size	".L+Core.Array#640.jit", 8
	.section	".note.GNU-stack","",@progbits
[Finished in 856ms]