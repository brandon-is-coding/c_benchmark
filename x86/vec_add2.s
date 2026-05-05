	.text
	.file	"add_vec2"
	.section	.ltext,"axl",@progbits
	.globl	julia_add_vec2_636              # -- Begin function julia_add_vec2_636
	.p2align	4, 0x90
	.type	julia_add_vec2_636,@function
julia_add_vec2_636:                     # @julia_add_vec2_636
; Function Signature: add_vec2(Array{Int32, 1}, Array{Int32, 1}, Array{Int32, 1}, Int32)
; ┌ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:12 within `add_vec2`
	.cfi_startproc
# %bb.0:                                # %top
	#DEBUG_VALUE: add_vec2:A <- [$rcx+0]
	#DEBUG_VALUE: add_vec2:B <- [$rdx+0]
	#DEBUG_VALUE: add_vec2:C <- [$r8+0]
	#DEBUG_VALUE: add_vec2:n <- $r9d
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
	sub	rsp, 72
	.cfi_offset rbx, -72
	.cfi_offset rdi, -64
	.cfi_offset rsi, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	qword ptr [rbp - 72], rcx       # 8-byte Spill
	xor	eax, eax
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl within `add_vec2`
	test	r9d, r9d
	cmovg	eax, r9d
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:13 within `add_vec2`
	jle	.LBB0_13
# %bb.1:                                # %L19.preheader
	mov	rcx, qword ptr [rbp - 72]       # 8-byte Reload
	mov	rbx, qword ptr [r8 + 16]
	mov	rsi, qword ptr [rdx + 16]
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:14 within `add_vec2`
; │┌ @ essentials.jl:919 within `getindex`
	lea	r12, [rax - 1]
	mov	r11, qword ptr [rdx]
	mov	rdi, qword ptr [r8]
	mov	r14d, 1
	mov	r10, qword ptr [rcx + 16]
	cmp	rbx, r12
	mov	r9, qword ptr [rcx]
	cmovb	r12, rbx
	cmp	r12, rsi
	cmovae	r12, rsi
	cmp	r12, r10
	cmovae	r12, r10
	lea	r15, [r12 + 1]
	cmp	r15, 65
	jb	.LBB0_8
# %bb.2:                                # %vector.memcheck
	mov	qword ptr [rbp - 64], rdx       # 8-byte Spill
	lea	rdx, [r9 + 4*r12 + 4]
	lea	r13, [rdi + 4*r12 + 4]
	lea	r12, [r11 + 4*r12 + 4]
	cmp	rdi, rdx
	setb	dl
	cmp	r9, r13
	setb	cl
	cmp	rdi, r12
	setb	r12b
	cmp	r11, r13
	setb	r13b
	test	dl, cl
	jne	.LBB0_3
# %bb.4:                                # %vector.memcheck
	mov	rdx, qword ptr [rbp - 64]       # 8-byte Reload
	and	r12b, r13b
	jne	.LBB0_8
# %bb.5:                                # %vector.ph
	mov	ecx, r15d
	and	ecx, 63
	mov	edx, 64
	mov	r12, r15
	cmovne	rdx, rcx
	sub	r12, rdx
	neg	rdx
	lea	r14, [r15 + rdx + 1]
	xor	r15d, r15d
	.p2align	4, 0x90
.LBB0_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
; ││ @ essentials.jl:920 within `getindex`
	vmovdqu64	zmm0, zmmword ptr [r11 + 4*r15]
	vmovdqu64	zmm1, zmmword ptr [r11 + 4*r15 + 64]
	vmovdqu64	zmm2, zmmword ptr [r11 + 4*r15 + 128]
	vmovdqu64	zmm3, zmmword ptr [r11 + 4*r15 + 192]
; │└
; │┌ @ int.jl:87 within `+`
	vpaddd	zmm0, zmm0, zmmword ptr [r9 + 4*r15]
	vpaddd	zmm1, zmm1, zmmword ptr [r9 + 4*r15 + 64]
	vpaddd	zmm2, zmm2, zmmword ptr [r9 + 4*r15 + 128]
	vpaddd	zmm3, zmm3, zmmword ptr [r9 + 4*r15 + 192]
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:991 within `_setindex!`
	vmovdqu64	zmmword ptr [rdi + 4*r15], zmm0
	vmovdqu64	zmmword ptr [rdi + 4*r15 + 64], zmm1
	vmovdqu64	zmmword ptr [rdi + 4*r15 + 128], zmm2
	vmovdqu64	zmmword ptr [rdi + 4*r15 + 192], zmm3
	add	r15, 64
	cmp	r12, r15
	jne	.LBB0_6
# %bb.7:
	mov	rdx, qword ptr [rbp - 64]       # 8-byte Reload
	jmp	.LBB0_8
.LBB0_3:
	mov	rdx, qword ptr [rbp - 64]       # 8-byte Reload
.LBB0_8:                                # %scalar.ph
; │└└
; │┌ @ essentials.jl:919 within `getindex`
	lea	r15, [r10 + 1]
	lea	r12, [rsi + 1]
	lea	r13, [rbx + 1]
	dec	r14
	.p2align	4, 0x90
.LBB0_9:                                # %L19
                                        # =>This Inner Loop Header: Depth=1
	cmp	r10, r14
	je	.LBB0_14
# %bb.10:                               # %L35
                                        #   in Loop: Header=BB0_9 Depth=1
	cmp	rsi, r14
	je	.LBB0_15
# %bb.11:                               # %L53
                                        #   in Loop: Header=BB0_9 Depth=1
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:990 within `_setindex!`
; │││┌ @ int.jl:519 within `<`
	cmp	rbx, r14
; │││└
	je	.LBB0_16
# %bb.12:                               # %L72
                                        #   in Loop: Header=BB0_9 Depth=1
; │└└
; │┌ @ essentials.jl:920 within `getindex`
	mov	ecx, dword ptr [r11 + 4*r14]
; │└
; │┌ @ int.jl:87 within `+`
	add	ecx, dword ptr [r9 + 4*r14]
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:991 within `_setindex!`
	mov	dword ptr [rdi + 4*r14], ecx
; │└└
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:15 within `add_vec2`
; │┌ @ range.jl:921 within `iterate`
; ││┌ @ promotion.jl:637 within `==`
	inc	r14
	cmp	rax, r14
; │└└
	jne	.LBB0_9
.LBB0_13:                               # %L88
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:16 within `add_vec2`
	mov	rax, r8
	add	rsp, 72
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
.LBB0_14:                               # %L32
	mov	rcx, qword ptr [rbp - 72]       # 8-byte Reload
; │ @ C:\Users\bccwi\Desktop\code\benchmark_c\benchmark.jl:14 within `add_vec2`
; │┌ @ essentials.jl:919 within `getindex`
	movabs	rax, offset j_throw_boundserror_638
	lea	rdx, [rbp - 80]
	mov	qword ptr [rbp - 80], r15
	vzeroupper
	call	rax
.LBB0_15:                               # %L50
	movabs	r8, offset j_throw_boundserror_638
	lea	rax, [rbp - 88]
	mov	rcx, rdx
	mov	qword ptr [rbp - 88], r12
	mov	rdx, rax
	vzeroupper
	call	r8
.LBB0_16:                               # %L69
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:990 within `_setindex!`
	movabs	rax, offset j_throw_boundserror_638
	lea	rdx, [rbp - 96]
	mov	rcx, r8
	mov	qword ptr [rbp - 96], r13
	vzeroupper
	call	rax
.Lfunc_end0:
	.size	julia_add_vec2_636, .Lfunc_end0-julia_add_vec2_636
	.cfi_endproc
; └└└
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
[Finished in 902ms]