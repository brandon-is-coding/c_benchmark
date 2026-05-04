	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 16, 0
	.globl	_julia_add_vec1_570             ; -- Begin function julia_add_vec1_570
	.p2align	2
_julia_add_vec1_570:                    ; @julia_add_vec1_570
; Function Signature: add_vec1(Array{Int32, 1}, Array{Int32, 1}, Int32)
; ┌ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:4 within `add_vec1`
; %bb.0:                                ; %top
	;DEBUG_VALUE: add_vec1:A <- [$x0+0]
	;DEBUG_VALUE: add_vec1:B <- [$x1+0]
	;DEBUG_VALUE: add_vec1:n <- $w2
	sub	sp, sp, #144
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	mov	x22, x2
	;DEBUG_VALUE: add_vec1:n <- $w22
	mov	x19, x1
	;DEBUG_VALUE: add_vec1:B <- [$x19+0]
	mov	x20, x0
	;DEBUG_VALUE: add_vec1:A <- [$x20+0]
	str	xzr, [sp, #48]
	str	xzr, [sp, #40]
	mov	x8, #65308                      ; =0xff1c
	movk	x8, #1087, lsl #16
	movk	x8, #1, lsl #32
	str	xzr, [sp, #32]
	add	x0, x8, #36
	blr	x8
	mov	x21, x0
	mov	w8, #4                          ; =0x4
	str	x8, [sp, #32]
	ldr	x8, [x0]
	str	x8, [sp, #40]
	add	x8, sp, #32
	str	x8, [x0]
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:5 within `add_vec1`
; │┌ @ baseext.jl:23 within `Array`
; ││┌ @ boot.jl:957 within `Int64`
; │││┌ @ boot.jl:876 within `toInt64`
	sxtw	x25, w22
; ││└└
; ││ @ baseext.jl:23 within `Array` @ boot.jl:647
; ││┌ @ boot.jl:588 within `GenericMemory`
	cbz	w22, LBB0_3
; %bb.1:                                ; %nonemptymem
	tbnz	w22, #31, LBB0_27
; %bb.2:                                ; %pass
	lsl	x1, x25, #2
	ldr	x0, [x21, #16]
Lloh0:
	adrp	x2, "l_+Core.GenericMemory#573.jit"@PAGE
Lloh1:
	add	x2, x2, "l_+Core.GenericMemory#573.jit"@PAGEOFF
	bl	_jl_alloc_genericmemory_unchecked
	mov	x23, x0
	str	x25, [x0]
	b	LBB0_4
LBB0_3:
Lloh2:
	adrp	x23, "l_jl_global#572.jit"@PAGE
Lloh3:
	add	x23, x23, "l_jl_global#572.jit"@PAGEOFF
LBB0_4:                                 ; %retval
; ││└
; ││ @ baseext.jl:23 within `Array` @ boot.jl:648
; ││┌ @ boot.jl:593 within `memoryref`
	ldr	x26, [x23, #8]
	str	x23, [sp, #48]
; ││└
	ldr	x0, [x21, #16]
	mov	x24, #25776                     ; =0x64b0
	movk	x24, #9288, lsl #16
	movk	x24, #1, lsl #32
	mov	w1, #472                        ; =0x1d8
	mov	w2, #32                         ; =0x20
	mov	x3, x24
	bl	_ijl_gc_small_alloc
	stp	x24, x26, [x0, #-8]
	stp	x23, x25, [x0, #8]
; │└
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:6 within `add_vec1`
	cbz	w22, LBB0_18
; %bb.5:                                ; %L24.preheader
	mov	w8, w22
	ldr	x9, [x20, #16]
	ldr	x10, [x19, #16]
	ldr	x11, [x20]
	ldr	x12, [x19]
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:7 within `add_vec1`
; │┌ @ essentials.jl:919 within `getindex`
	ands	x13, x10, x10, asr #63
	csinv	x14, x13, xzr, ge
	sub	x13, x10, x13
	madd	x13, x13, x14, x13
	ands	x14, x9, x9, asr #63
	csinv	x15, x14, xzr, ge
	sub	x14, x9, x14
	madd	x14, x14, x15, x14
	cmp	x13, x14
	csel	x13, x13, x14, lo
	ands	x14, x25, x25, asr #63
	csinv	x15, x14, xzr, ge
	sub	x14, x25, x14
	madd	x14, x14, x15, x14
	cmp	x13, x14
	csel	x14, x13, x14, lo
	cmp	x14, x8
	csel	x13, x14, x8, lo
	cbz	x14, LBB0_12
; %bb.6:                                ; %L77.preheader
; │└
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:8 within `add_vec1`
	cmp	x13, #1
	csinc	x14, x13, xzr, hi
	cmp	x13, #15
	b.hi	LBB0_19
; %bb.7:
	mov	w15, #1                         ; =0x1
LBB0_8:                                 ; %L77.preheader2
	sub	x14, x15, #1
LBB0_9:                                 ; %L77
                                        ; =>This Inner Loop Header: Depth=1
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:7 within `add_vec1`
; │┌ @ essentials.jl:920 within `getindex`
	lsl	x15, x14, #2
	ldr	w16, [x11, x15]
	ldr	w17, [x12, x15]
; │└
; │┌ @ int.jl:87 within `+`
	add	w16, w17, w16
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:991 within `_setindex!`
	str	w16, [x26, x15]
; │└└
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:8 within `add_vec1`
	add	x14, x14, #1
	cmp	x14, x13
	b.lo	LBB0_9
; %bb.10:                               ; %main.exit.selector.loopexit
	add	x15, x14, #1
LBB0_11:                                ; %main.exit.selector
	cmp	x14, x8
	b.hs	LBB0_18
	b	LBB0_13
LBB0_12:
	mov	w15, #1                         ; =0x1
LBB0_13:                                ; %L24.postloop.preheader
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:7 within `add_vec1`
; │┌ @ essentials.jl:919 within `getindex`
	sub	x13, x15, #1
LBB0_14:                                ; %L24.postloop
                                        ; =>This Inner Loop Header: Depth=1
	cmp	x13, x9
	b.hs	LBB0_26
; %bb.15:                               ; %L40.postloop
                                        ;   in Loop: Header=BB0_14 Depth=1
	cmp	x13, x10
	b.hs	LBB0_25
; %bb.16:                               ; %L58.postloop
                                        ;   in Loop: Header=BB0_14 Depth=1
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:990 within `_setindex!`
	cmp	x13, x25
	b.hs	LBB0_24
; %bb.17:                               ; %L77.postloop
                                        ;   in Loop: Header=BB0_14 Depth=1
; │└└
; │┌ @ essentials.jl:920 within `getindex`
	lsl	x14, x13, #2
	ldr	w15, [x11, x14]
	ldr	w16, [x12, x14]
; │└
; │┌ @ int.jl:87 within `+`
	add	w15, w16, w15
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:991 within `_setindex!`
	str	w15, [x26, x14]
; │└└
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:8 within `add_vec1`
; │┌ @ range.jl:921 within `iterate`
; ││┌ @ promotion.jl:637 within `==`
	add	x13, x13, #1
; │└└
	cmp	x8, x13
	b.ne	LBB0_14
LBB0_18:                                ; %L93
	ldr	x8, [sp, #40]
	str	x8, [x21]
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:9 within `add_vec1`
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB0_19:                                ; %vector.memcheck
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:8 within `add_vec1`
	lsl	x15, x13, #2
	add	x17, x11, x15
	add	x16, x12, x15
	cmp	x26, x16
	add	x15, x26, x15
	ccmp	x12, x15, #2, lo
	cset	w16, lo
	cmp	x11, x15
	ccmp	x26, x17, #2, lo
	mov	w15, #1                         ; =0x1
	b.lo	LBB0_8
; %bb.20:                               ; %vector.memcheck
	tbnz	w16, #0, LBB0_8
; %bb.21:                               ; %vector.ph
	and	x16, x14, #0xfffffff0
	orr	x15, x16, #0x1
	add	x17, x11, #32
	add	x1, x12, #32
	add	x2, x26, #32
	mov	x3, x16
LBB0_22:                                ; %vector.body
                                        ; =>This Inner Loop Header: Depth=1
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:7 within `add_vec1`
; │┌ @ essentials.jl:920 within `getindex`
	ldp	q0, q1, [x17, #-32]
	ldp	q2, q3, [x17], #64
	ldp	q4, q5, [x1, #-32]
	ldp	q6, q7, [x1], #64
; │└
; │┌ @ int.jl:87 within `+`
	add.4s	v0, v4, v0
	add.4s	v1, v5, v1
	add.4s	v2, v6, v2
	add.4s	v3, v7, v3
; │└
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:991 within `_setindex!`
	stp	q0, q1, [x2, #-32]
	stp	q2, q3, [x2], #64
	subs	x3, x3, #16
	b.ne	LBB0_22
; %bb.23:                               ; %middle.block
; │└└
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:8 within `add_vec1`
	cmp	x14, x16
	b.eq	LBB0_11
	b	LBB0_8
LBB0_24:                                ; %L74
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:7 within `add_vec1`
; │┌ @ array.jl:986 within `setindex!`
; ││┌ @ array.jl:990 within `_setindex!`
	add	x8, x13, #1
	str	x8, [sp, #24]
	str	x0, [sp, #48]
	add	x1, sp, #24
	bl	_j_throw_boundserror_575
LBB0_25:                                ; %L55
; │└└
; │┌ @ essentials.jl:919 within `getindex`
	add	x8, x13, #1
	str	x8, [sp, #16]
	str	xzr, [sp, #48]
	add	x1, sp, #16
	mov	x0, x19
	bl	_j_throw_boundserror_575
LBB0_26:                                ; %L37
	add	x8, x13, #1
	str	x8, [sp, #8]
	str	xzr, [sp, #48]
	add	x1, sp, #8
	mov	x0, x20
	bl	_j_throw_boundserror_575
LBB0_27:                                ; %fail
; │└
; │ @ /Users/bcollin3/Desktop/code/c_benchmark/benchmark.jl:5 within `add_vec1`
; │┌ @ baseext.jl:23 within `Array` @ boot.jl:647
; ││┌ @ boot.jl:588 within `GenericMemory`
Lloh4:
	adrp	x0, "l__j_str_invalid GenericMemory siz...#1"@PAGE
Lloh5:
	add	x0, x0, "l__j_str_invalid GenericMemory siz...#1"@PAGEOFF
	bl	_jl_argument_error
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
; └└└
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
"l__j_str_invalid GenericMemory siz...#1": ; @"_j_str_invalid GenericMemory siz...#1"
	.asciz	"invalid GenericMemory size: the number of elements is either negative or too large for system address width"

.set "l_+Core.GenericMemory#573.jit", 4874426208
.set "l_jl_global#572.jit", 4874426288
.set "l_+Core.Array#574.jit", 4903691440
.subsections_via_symbols
[Finished in 617ms]