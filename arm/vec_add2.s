	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 16, 0
	.globl	_julia_add_vec2_575             ; -- Begin function julia_add_vec2_575
	.p2align	2
_julia_add_vec2_575:                    ; @julia_add_vec2_575
; Function Signature: add_vec2(Array{Int32, 1}, Array{Int32, 1}, Array{Int32, 1}, Int32)
; ┌ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:12 within `add_vec2`
; %bb.0:                                ; %top
	;DEBUG_VALUE: add_vec2:A <- [$x0+0]
	;DEBUG_VALUE: add_vec2:A <- [$x0+0]
	;DEBUG_VALUE: add_vec2:B <- [$x1+0]
	;DEBUG_VALUE: add_vec2:B <- [$x1+0]
	;DEBUG_VALUE: add_vec2:C <- [$x2+0]
	;DEBUG_VALUE: add_vec2:C <- [$x2+0]
	;DEBUG_VALUE: add_vec2:n <- $w3
	;DEBUG_VALUE: add_vec2:n <- $w3
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:13 within `add_vec2`
	cmp	w3, #1
	b.lt	LBB0_12
; %bb.1:                                ; %L19.preheader
	bic	w8, w3, w3, asr #31
	ldr	x9, [x0, #16]
	ldr	x10, [x1, #16]
	ldr	x11, [x2, #16]
	ldr	x12, [x0]
	ldr	x13, [x1]
	ldr	x15, [x2]
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:14 within `add_vec2`
; │┌ @ essentials.jl:919 within `getindex`
	add	x14, x9, #1
	add	x16, x10, #1
	add	x17, x11, #1
	sub	x3, x8, #1
	cmp	x11, x3
	csel	x3, x11, x3, lo
	cmp	x3, x10
	csel	x3, x3, x10, lo
	cmp	x3, x9
	csel	x3, x3, x9, lo
	add	x4, x3, #1
	cmp	x4, #17
	b.hs	LBB0_3
; %bb.2:
	mov	w3, #1                          ; =0x1
	b	LBB0_7
LBB0_3:                                 ; %vector.memcheck
	lsl	x3, x3, #2
	add	x3, x3, #4
	add	x6, x12, x3
	add	x5, x13, x3
	cmp	x15, x5
	add	x3, x15, x3
	ccmp	x13, x3, #2, lo
	cset	w5, lo
	cmp	x12, x3
	ccmp	x15, x6, #2, lo
	mov	w3, #1                          ; =0x1
	b.lo	LBB0_7
; %bb.4:                                ; %vector.memcheck
	tbnz	w5, #0, LBB0_7
; %bb.5:                                ; %vector.ph
	ands	x3, x4, #0xf
	mov	w5, #16                         ; =0x10
	csel	x3, x5, x3, eq
	sub	x4, x4, x3
	add	x3, x4, #1
	add	x5, x12, #32
	add	x6, x13, #32
	add	x7, x15, #32
LBB0_6:                                 ; %vector.body
                                        ; =>This Inner Loop Header: Depth=1
; ││ @ essentials.jl:920 within `getindex`
	ldp	q0, q1, [x5, #-32]
	ldp	q2, q3, [x5], #64
	ldp	q4, q5, [x6, #-32]
	ldp	q6, q7, [x6], #64
; │└
; │┌ @ int.jl:87 within `+`
	add.4s	v0, v4, v0
	add.4s	v1, v5, v1
	add.4s	v2, v6, v2
	add.4s	v3, v7, v3
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:991 within `_setindex!`
	stp	q0, q1, [x7, #-32]
	stp	q2, q3, [x7], #64
	subs	x4, x4, #16
	b.ne	LBB0_6
LBB0_7:                                 ; %L19.preheader1
; │└└
; │┌ @ essentials.jl:919 within `getindex`
	sub	x3, x3, #1
LBB0_8:                                 ; %L19
                                        ; =>This Inner Loop Header: Depth=1
	cmp	x9, x3
	b.eq	LBB0_13
; %bb.9:                                ; %L35
                                        ;   in Loop: Header=BB0_8 Depth=1
	cmp	x10, x3
	b.eq	LBB0_14
; %bb.10:                               ; %L53
                                        ;   in Loop: Header=BB0_8 Depth=1
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:990 within `_setindex!`
	cmp	x11, x3
	b.eq	LBB0_15
; %bb.11:                               ; %L72
                                        ;   in Loop: Header=BB0_8 Depth=1
; │└└
; │┌ @ essentials.jl:920 within `getindex`
	lsl	x4, x3, #2
	ldr	w5, [x12, x4]
	ldr	w6, [x13, x4]
; │└
; │┌ @ int.jl:87 within `+`
	add	w5, w6, w5
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:991 within `_setindex!`
	str	w5, [x15, x4]
; │└└
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:15 within `add_vec2`
; │┌ @ range.jl:921 within `iterate`
; ││┌ @ promotion.jl:637 within `==`
	add	x3, x3, #1
; │└└
	cmp	x8, x3
	b.ne	LBB0_8
LBB0_12:                                ; %L88
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:16 within `add_vec2`
	mov	x0, x2
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB0_13:                                ; %L32
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:14 within `add_vec2`
; │┌ @ essentials.jl:919 within `getindex`
	str	x14, [sp, #8]
	add	x1, sp, #8
	bl	_j_throw_boundserror_577
LBB0_14:                                ; %L50
	str	x16, [sp, #16]
	mov	x0, x1
	add	x1, sp, #16
	bl	_j_throw_boundserror_577
LBB0_15:                                ; %L69
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:990 within `_setindex!`
	str	x17, [sp, #24]
	add	x1, sp, #24
	mov	x0, x2
	bl	_j_throw_boundserror_577
; └└└
                                        ; -- End function
.subsections_via_symbols
[Finished in 593ms]