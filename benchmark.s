	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 2
	.globl	_vec_add1                       ; -- Begin function vec_add1
	.p2align	2
_vec_add1:                              ; @vec_add1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldursw	x9, [x29, #-20]
	mov	x8, #4                          ; =0x4
	mul	x0, x8, x9
	bl	_malloc
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-16]
	ldrsw	x10, [sp, #12]
	ldr	w9, [x9, x10, lsl #2]
	add	w8, w8, w9
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB0_1
LBB0_4:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_vec_add2                       ; -- Begin function vec_add2
	.p2align	2
_vec_add2:                              ; @vec_add2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	w3, [sp, #4]
	str	wzr, [sp]
	b	LBB1_1
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.ge	LBB1_4
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp]
	ldr	w9, [x9, x10, lsl #2]
	add	w8, w8, w9
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp]
	str	w8, [x9, x10, lsl #2]
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	LBB1_1
LBB1_4:
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_vec_add3                       ; -- Begin function vec_add3
	.p2align	2
_vec_add3:                              ; @vec_add3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	w3, [sp, #4]
	str	wzr, [sp]
	b	LBB2_1
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.ge	LBB2_4
	b	LBB2_2
LBB2_2:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp]
	ldr	w9, [x9, x10, lsl #2]
	add	w8, w8, w9
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #24]
	ldr	w9, [sp]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [sp, #16]
	ldr	w10, [sp]
	add	w10, w10, #1
	ldr	w9, [x9, w10, sxtw #2]
	add	w8, w8, w9
	ldr	x9, [sp, #8]
	ldr	w10, [sp]
	add	w10, w10, #1
	str	w8, [x9, w10, sxtw #2]
	b	LBB2_3
LBB2_3:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #2
	str	w8, [sp]
	b	LBB2_1
LBB2_4:
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_benchmark1                     ; -- Begin function benchmark1
	.p2align	2
_benchmark1:                            ; @benchmark1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #10000                      ; =0x2710
	stur	w8, [x29, #-44]
	mov	w8, #1000                       ; =0x3e8
	stur	w8, [x29, #-48]
	ldursw	x9, [x29, #-44]
	mov	x8, #4                          ; =0x4
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	mul	x0, x8, x9
	bl	_malloc
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	stur	x0, [x29, #-56]
	ldursw	x9, [x29, #-44]
	mul	x0, x8, x9
	bl	_malloc
	stur	x0, [x29, #-64]
	stur	wzr, [x29, #-68]
	b	LBB3_1
LBB3_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-68]
	ldur	w9, [x29, #-44]
	subs	w8, w8, w9
	b.ge	LBB3_4
	b	LBB3_2
LBB3_2:                                 ;   in Loop: Header=BB3_1 Depth=1
	bl	_rand
	mov	w9, #1000                       ; =0x3e8
	str	w9, [sp, #52]                   ; 4-byte Folded Spill
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	ldur	x9, [x29, #-56]
	ldursw	x10, [x29, #-68]
	str	w8, [x9, x10, lsl #2]
	bl	_rand
	ldr	w9, [sp, #52]                   ; 4-byte Folded Reload
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	ldur	x9, [x29, #-64]
	ldursw	x10, [x29, #-68]
	str	w8, [x9, x10, lsl #2]
	b	LBB3_3
LBB3_3:                                 ;   in Loop: Header=BB3_1 Depth=1
	ldur	w8, [x29, #-68]
	add	w8, w8, #1
	stur	w8, [x29, #-68]
	b	LBB3_1
LBB3_4:
	ldur	w8, [x29, #-44]
	ldur	w9, [x29, #-48]
	mul	w10, w8, w9
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-44]
	mov	x10, x8
	ldursw	x9, [x29, #-44]
	mov	x8, #4                          ; =0x4
	mul	x8, x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w0, #6                          ; =0x6
	sub	x1, x29, #16
	bl	_clock_gettime
	stur	wzr, [x29, #-72]
	b	LBB3_5
LBB3_5:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-72]
	ldur	w9, [x29, #-48]
	subs	w8, w8, w9
	b.ge	LBB3_8
	b	LBB3_6
LBB3_6:                                 ;   in Loop: Header=BB3_5 Depth=1
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-64]
	ldur	w2, [x29, #-44]
	bl	_vec_add1
	str	x0, [sp, #80]
	ldr	x0, [sp, #80]
	bl	_free
	b	LBB3_7
LBB3_7:                                 ;   in Loop: Header=BB3_5 Depth=1
	ldur	w8, [x29, #-72]
	add	w8, w8, #1
	stur	w8, [x29, #-72]
	b	LBB3_5
LBB3_8:
	mov	w0, #6                          ; =0x6
	str	w0, [sp, #48]                   ; 4-byte Folded Spill
	sub	x1, x29, #32
	bl	_clock_gettime
	ldur	x8, [x29, #-32]
	sub	x9, x29, #16
	str	x9, [sp, #40]                   ; 8-byte Folded Spill
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	scvtf	d0, x8
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	scvtf	d1, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d2, x8
	fdiv	d1, d1, d2
	fadd	d0, d0, d1
	stur	d0, [x29, #-40]
	ldur	d0, [x29, #-40]
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	ldr	w0, [sp, #48]                   ; 4-byte Folded Reload
	bl	_clock_gettime
	ldursw	x9, [x29, #-44]
	mov	x8, #4                          ; =0x4
	mul	x0, x8, x9
	bl	_malloc
	str	x0, [sp, #72]
	str	wzr, [sp, #68]
	b	LBB3_9
LBB3_9:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #68]
	ldur	w9, [x29, #-48]
	subs	w8, w8, w9
	b.ge	LBB3_12
	b	LBB3_10
LBB3_10:                                ;   in Loop: Header=BB3_9 Depth=1
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-64]
	ldr	x2, [sp, #72]
	ldur	w3, [x29, #-44]
	bl	_vec_add2
	str	x0, [sp, #72]
	b	LBB3_11
LBB3_11:                                ;   in Loop: Header=BB3_9 Depth=1
	ldr	w8, [sp, #68]
	add	w8, w8, #1
	str	w8, [sp, #68]
	b	LBB3_9
LBB3_12:
	ldr	x0, [sp, #72]
	bl	_free
	mov	w0, #6                          ; =0x6
	str	w0, [sp, #36]                   ; 4-byte Folded Spill
	sub	x1, x29, #32
	bl	_clock_gettime
	ldur	x8, [x29, #-32]
	sub	x9, x29, #16
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	scvtf	d0, x8
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	scvtf	d1, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d2, x8
	fdiv	d1, d1, d2
	fadd	d0, d0, d1
	stur	d0, [x29, #-40]
	ldur	d0, [x29, #-40]
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	ldr	w0, [sp, #36]                   ; 4-byte Folded Reload
	bl	_clock_gettime
	ldursw	x9, [x29, #-44]
	mov	x8, #4                          ; =0x4
	mul	x0, x8, x9
	bl	_malloc
	str	x0, [sp, #72]
	str	wzr, [sp, #64]
	b	LBB3_13
LBB3_13:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #64]
	ldur	w9, [x29, #-48]
	subs	w8, w8, w9
	b.ge	LBB3_16
	b	LBB3_14
LBB3_14:                                ;   in Loop: Header=BB3_13 Depth=1
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-64]
	ldr	x2, [sp, #72]
	ldur	w3, [x29, #-44]
	bl	_vec_add3
	str	x0, [sp, #72]
	b	LBB3_15
LBB3_15:                                ;   in Loop: Header=BB3_13 Depth=1
	ldr	w8, [sp, #64]
	add	w8, w8, #1
	str	w8, [sp, #64]
	b	LBB3_13
LBB3_16:
	ldr	x0, [sp, #72]
	bl	_free
	mov	w0, #6                          ; =0x6
	sub	x1, x29, #32
	bl	_clock_gettime
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	scvtf	d0, x8
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	scvtf	d1, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d2, x8
	fdiv	d1, d1, d2
	fadd	d0, d0, d1
	stur	d0, [x29, #-40]
	ldur	d0, [x29, #-40]
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	bl	_benchmark1
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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

l_.str.4:                               ; @.str.4
	.asciz	"vec_add3 took %f seconds\n"

.subsections_via_symbols
