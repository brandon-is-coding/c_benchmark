	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 2
	.globl	_vec_add1                       ; -- Begin function vec_add1
	.p2align	2
_vec_add1:                              ; @vec_add1
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	sbfiz	x0, x2, #2, #32
	bl	_malloc
	cmp	w21, #1
	b.lt	LBB0_14
; %bb.1:
	mov	w8, w21
	cmp	w21, #4
	b.hs	LBB0_3
; %bb.2:
	mov	x9, #0                          ; =0x0
	b	LBB0_12
LBB0_3:
	cmp	w21, #16
	b.hs	LBB0_5
; %bb.4:
	mov	x9, #0                          ; =0x0
	b	LBB0_9
LBB0_5:
	and	x9, x8, #0x7ffffff0
	add	x10, x0, #32
	add	x11, x20, #32
	add	x12, x19, #32
	mov	x13, x9
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x12, #-32]
	ldp	q2, q3, [x12], #64
	ldp	q4, q5, [x11, #-32]
	ldp	q6, q7, [x11], #64
	add.4s	v0, v4, v0
	add.4s	v1, v5, v1
	add.4s	v2, v6, v2
	add.4s	v3, v7, v3
	stp	q0, q1, [x10, #-32]
	stp	q2, q3, [x10], #64
	subs	x13, x13, #16
	b.ne	LBB0_6
; %bb.7:
	cmp	x9, x8
	b.eq	LBB0_14
; %bb.8:
	tst	x8, #0xc
	b.eq	LBB0_12
LBB0_9:
	mov	x13, x9
	and	x9, x8, #0x7ffffffc
	lsl	x12, x13, #2
	add	x10, x19, x12
	add	x11, x20, x12
	add	x12, x0, x12
	sub	x13, x13, x9
LBB0_10:                                ; =>This Inner Loop Header: Depth=1
	ldr	q0, [x10], #16
	ldr	q1, [x11], #16
	add.4s	v0, v1, v0
	str	q0, [x12], #16
	adds	x13, x13, #4
	b.ne	LBB0_10
; %bb.11:
	cmp	x9, x8
	b.eq	LBB0_14
LBB0_12:
	lsl	x12, x9, #2
	add	x10, x0, x12
	add	x11, x20, x12
	add	x12, x19, x12
	sub	x8, x8, x9
LBB0_13:                                ; =>This Inner Loop Header: Depth=1
	ldr	w9, [x12], #4
	ldr	w13, [x11], #4
	add	w9, w13, w9
	str	w9, [x10], #4
	subs	x8, x8, #1
	b.ne	LBB0_13
LBB0_14:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_vec_add2                       ; -- Begin function vec_add2
	.p2align	2
_vec_add2:                              ; @vec_add2
	.cfi_startproc
; %bb.0:
	cmp	w3, #1
	b.lt	LBB1_5
; %bb.1:
	mov	w8, w3
	cmp	w3, #4
	b.hs	LBB1_6
; %bb.2:
	mov	x9, #0                          ; =0x0
LBB1_3:
	lsl	x12, x9, #2
	add	x10, x2, x12
	add	x11, x1, x12
	add	x12, x0, x12
	sub	x8, x8, x9
LBB1_4:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w9, [x12], #4
	ldr	w13, [x11], #4
	add	w9, w13, w9
	str	w9, [x10], #4
	subs	x8, x8, #1
	b.ne	LBB1_4
LBB1_5:
	mov	x0, x2
	ret
LBB1_6:
	mov	x9, #0                          ; =0x0
	sub	x10, x2, x0
	cmp	x10, #64
	b.lo	LBB1_3
; %bb.7:
	sub	x10, x2, x1
	cmp	x10, #64
	b.lo	LBB1_3
; %bb.8:
	cmp	w3, #16
	b.hs	LBB1_10
; %bb.9:
	mov	x9, #0                          ; =0x0
	b	LBB1_14
LBB1_10:
	and	x9, x8, #0x7ffffff0
	add	x10, x2, #32
	add	x11, x1, #32
	add	x12, x0, #32
	mov	x13, x9
LBB1_11:                                ; =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x12, #-32]
	ldp	q2, q3, [x12], #64
	ldp	q4, q5, [x11, #-32]
	ldp	q6, q7, [x11], #64
	add.4s	v0, v4, v0
	add.4s	v1, v5, v1
	add.4s	v2, v6, v2
	add.4s	v3, v7, v3
	stp	q0, q1, [x10, #-32]
	stp	q2, q3, [x10], #64
	subs	x13, x13, #16
	b.ne	LBB1_11
; %bb.12:
	cmp	x9, x8
	b.eq	LBB1_5
; %bb.13:
	tst	x8, #0xc
	b.eq	LBB1_3
LBB1_14:
	mov	x13, x9
	and	x9, x8, #0x7ffffffc
	lsl	x12, x13, #2
	add	x10, x0, x12
	add	x11, x1, x12
	add	x12, x2, x12
	sub	x13, x13, x9
LBB1_15:                                ; =>This Inner Loop Header: Depth=1
	ldr	q0, [x10], #16
	ldr	q1, [x11], #16
	add.4s	v0, v1, v0
	str	q0, [x12], #16
	adds	x13, x13, #4
	b.ne	LBB1_15
; %bb.16:
	cmp	x9, x8
	b.ne	LBB1_3
	b	LBB1_5
	.cfi_endproc
                                        ; -- End function
	.globl	_benchmark1                     ; -- Begin function benchmark1
	.p2align	2
_benchmark1:                            ; @benchmark1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	mov	w19, #10000                     ; =0x2710
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	bl	_rand
	bl	_rand
	subs	w19, w19, #1
	b.ne	LBB2_1
; %bb.2:
	mov	w8, #38528                      ; =0x9680
	movk	w8, #152, lsl #16
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	w8, #40000                      ; =0x9c40
	mov	w9, #10000                      ; =0x2710
	stp	x9, x8, [sp]
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	add	x1, sp, #32
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	add	x1, sp, #16
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldp	x8, x9, [sp, #16]
	ldp	x10, x11, [sp, #32]
	sub	x8, x8, x10
	scvtf	d0, x8
	sub	x8, x9, x11
	scvtf	d1, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d8, x8
	fdiv	d1, d1, d8
	fadd	d0, d1, d0
	str	d0, [sp]
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	add	x1, sp, #32
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	add	x1, sp, #16
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldp	x8, x9, [sp, #16]
	ldp	x10, x11, [sp, #32]
	sub	x8, x8, x10
	scvtf	d0, x8
	sub	x8, x9, x11
	scvtf	d1, x8
	fdiv	d1, d1, d8
	fadd	d0, d1, d0
	str	d0, [sp]
Lloh6:
	adrp	x0, l_.str.3@PAGE
Lloh7:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_benchmark1
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Benchmark1: %d additions\n"

l_.str.1:                               ; @.str.1
	.asciz	"A,B are 32bit integer arrays of length %d, taking %lu bytes each\n"

l_.str.2:                               ; @.str.2
	.asciz	"vec_add1 took %f seconds\n"

l_.str.3:                               ; @.str.3
	.asciz	"vec_add2 took %f seconds\n"

.subsections_via_symbols
