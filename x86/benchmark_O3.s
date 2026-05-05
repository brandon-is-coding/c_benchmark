	.file	"benchmark.c"
	.text
	.p2align 4
	.globl	vec_add1
	.def	vec_add1;	.scl	2;	.type	32;	.endef
	.seh_proc	vec_add1
vec_add1:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rsi
	movslq	%r8d, %rcx
	movq	%rdx, %rdi
	movq	%rcx, %rbx
	salq	$2, %rcx
	call	malloc
	movq	%rax, %rdx
	testl	%ebx, %ebx
	jle	.L1
	leal	-1(%rbx), %eax
	cmpl	$2, %eax
	jbe	.L8
	movl	%ebx, %ecx
	xorl	%eax, %eax
	shrl	$2, %ecx
	salq	$4, %rcx
	.p2align 5
	.p2align 4
	.p2align 3
.L4:
	movdqu	(%rsi,%rax), %xmm0
	movdqu	(%rdi,%rax), %xmm2
	paddd	%xmm2, %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rax
	jne	.L4
	movl	%ebx, %eax
	andl	$-4, %eax
	movl	%eax, %ecx
	cmpl	%eax, %ebx
	je	.L1
.L3:
	subl	%ecx, %ebx
	cmpl	$1, %ebx
	je	.L6
	movq	(%rsi,%rcx,4), %xmm0
	movq	(%rdi,%rcx,4), %xmm1
	paddd	%xmm1, %xmm0
	movq	%xmm0, (%rdx,%rcx,4)
	testb	$1, %bl
	je	.L1
	andl	$-2, %ebx
	addl	%ebx, %eax
.L6:
	cltq
	movl	(%rdi,%rax,4), %ecx
	addl	(%rsi,%rax,4), %ecx
	movl	%ecx, (%rdx,%rax,4)
.L1:
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L8:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.L3
	.seh_endproc
	.p2align 4
	.globl	vec_add2
	.def	vec_add2;	.scl	2;	.type	32;	.endef
	.seh_proc	vec_add2
vec_add2:
	.seh_endprologue
	testl	%r9d, %r9d
	jle	.L18
	cmpl	$1, %r9d
	je	.L19
	movq	%r8, %rax
	subq	%rcx, %rax
	subq	$4, %rax
	cmpq	$8, %rax
	jbe	.L19
	movq	%r8, %rax
	subq	%rdx, %rax
	subq	$4, %rax
	cmpq	$8, %rax
	jbe	.L19
	leal	-1(%r9), %eax
	movl	%r9d, %r11d
	cmpl	$2, %eax
	jbe	.L27
	movl	%r9d, %r10d
	xorl	%eax, %eax
	shrl	$2, %r10d
	salq	$4, %r10
	.p2align 5
	.p2align 4
	.p2align 3
.L21:
	movdqu	(%rcx,%rax), %xmm0
	movdqu	(%rdx,%rax), %xmm2
	paddd	%xmm2, %xmm0
	movups	%xmm0, (%r8,%rax)
	addq	$16, %rax
	cmpq	%rax, %r10
	jne	.L21
	movl	%r9d, %eax
	andl	$-4, %eax
	movl	%eax, %r10d
	cmpl	%eax, %r9d
	je	.L18
	movl	%r9d, %r11d
	subl	%eax, %r11d
	cmpl	$1, %r11d
	je	.L23
.L20:
	movl	%r10d, %r9d
	movq	(%rcx,%r9,4), %xmm0
	movq	(%rdx,%r9,4), %xmm1
	paddd	%xmm1, %xmm0
	movq	%xmm0, (%r8,%r9,4)
	testb	$1, %r11b
	je	.L18
	andl	$-2, %r11d
	addl	%r11d, %eax
.L23:
	cltq
	movl	(%rdx,%rax,4), %edx
	addl	(%rcx,%rax,4), %edx
	movl	%edx, (%r8,%rax,4)
.L18:
	movq	%r8, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	movslq	%r9d, %r9
	xorl	%eax, %eax
	salq	$2, %r9
	.p2align 5
	.p2align 4
	.p2align 3
.L25:
	movl	(%rdx,%rax), %r10d
	addl	(%rcx,%rax), %r10d
	movl	%r10d, (%r8,%rax)
	addq	$4, %rax
	cmpq	%r9, %rax
	jne	.L25
	movq	%r8, %rax
	ret
.L27:
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	jmp	.L20
	.seh_endproc
	.p2align 4
	.globl	vec_add3
	.def	vec_add3;	.scl	2;	.type	32;	.endef
	.seh_proc	vec_add3
vec_add3:
	.seh_endprologue
	testl	%r9d, %r9d
	jle	.L46
	leaq	15(%r8), %rax
	movq	%rax, %r10
	subq	%rdx, %r10
	cmpq	$30, %r10
	jbe	.L52
	subq	%rcx, %rax
	cmpq	$30, %rax
	jbe	.L52
	subl	$1, %r9d
	cmpl	$1, %r9d
	jbe	.L53
	shrl	%r9d
	xorl	%eax, %eax
	addl	$1, %r9d
	movl	%r9d, %r10d
	shrl	%r10d
	salq	$4, %r10
	.p2align 5
	.p2align 4
	.p2align 3
.L49:
	movdqu	(%rcx,%rax), %xmm0
	movdqu	(%rdx,%rax), %xmm2
	paddd	%xmm2, %xmm0
	movups	%xmm0, (%r8,%rax)
	addq	$16, %rax
	cmpq	%rax, %r10
	jne	.L49
	testb	$1, %r9b
	je	.L46
	andl	$-2, %r9d
.L48:
	movq	(%rcx,%r9,8), %xmm0
	movq	(%rdx,%r9,8), %xmm1
	paddd	%xmm1, %xmm0
	movq	%xmm0, (%r8,%r9,8)
.L46:
	movq	%r8, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
.L47:
	movl	(%rdx,%rax,4), %r10d
	addl	(%rcx,%rax,4), %r10d
	movl	%r10d, (%r8,%rax,4)
	movl	4(%rdx,%rax,4), %r10d
	addl	4(%rcx,%rax,4), %r10d
	movl	%r10d, 4(%r8,%rax,4)
	addq	$2, %rax
	cmpl	%eax, %r9d
	jg	.L47
	movq	%r8, %rax
	ret
.L53:
	xorl	%r9d, %r9d
	jmp	.L48
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "Benchmark1: %d additions\12\0"
	.align 8
.LC1:
	.ascii "A,B are 32bit integer arrays of length %d, taking %lu bytes each\12\0"
.LC3:
	.ascii "vec_add1 took %f seconds\12\0"
.LC4:
	.ascii "vec_add2 took %f seconds\12\0"
.LC5:
	.ascii "vec_add3 took %f seconds\12\0"
	.text
	.p2align 4
	.globl	benchmark1
	.def	benchmark1;	.scl	2;	.type	32;	.endef
	.seh_proc	benchmark1
benchmark1:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movl	$40000, %ecx
	xorl	%edi, %edi
	call	malloc
	movl	$40000, %ecx
	movq	%rax, %rbx
	call	malloc
	movq	%rax, %rsi
	.p2align 4
	.p2align 3
.L66:
	call	rand
	movslq	%eax, %rdx
	movl	%eax, %ecx
	imulq	$274877907, %rdx, %rdx
	sarl	$31, %ecx
	sarq	$38, %rdx
	subl	%ecx, %edx
	imull	$1000, %edx, %edx
	subl	%edx, %eax
	movl	%eax, (%rbx,%rdi)
	call	rand
	movslq	%eax, %rdx
	movl	%eax, %ecx
	imulq	$274877907, %rdx, %rdx
	sarl	$31, %ecx
	sarq	$38, %rdx
	subl	%ecx, %edx
	imull	$1000, %edx, %edx
	subl	%edx, %eax
	movl	%eax, (%rsi,%rdi)
	addq	$4, %rdi
	cmpq	$40000, %rdi
	jne	.L66
	movl	$10000000, %edx
	leaq	32(%rsp), %rbp
	movl	$1000, %edi
	leaq	.LC0(%rip), %rcx
	call	printf
	movl	$40000, %r8d
	movl	$10000, %edx
	leaq	.LC1(%rip), %rcx
	call	printf
	movq	%rbp, %rdx
	movl	$1, %ecx
	call	clock_gettime64
	.p2align 4
	.p2align 3
.L68:
	movl	$40000, %ecx
	call	malloc
	movq	%rax, %rcx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
.L67:
	movdqu	(%rsi,%rax), %xmm0
	movdqu	(%rbx,%rax), %xmm2
	paddd	%xmm2, %xmm0
	movups	%xmm0, (%rcx,%rax)
	addq	$16, %rax
	cmpq	$40000, %rax
	jne	.L67
	call	free
	subl	$1, %edi
	jne	.L68
	leaq	48(%rsp), %rdi
	movl	$1, %ecx
	movq	%rdi, %rdx
	call	clock_gettime64
	movl	56(%rsp), %eax
	pxor	%xmm1, %xmm1
	subl	40(%rsp), %eax
	cvtsi2sdl	%eax, %xmm1
	pxor	%xmm0, %xmm0
	movq	48(%rsp), %rax
	subq	32(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC2(%rip), %xmm1
	addsd	%xmm0, %xmm1
	leaq	.LC3(%rip), %rcx
	movq	%xmm1, %rdx
	call	printf
	movq	%rbp, %rdx
	movl	$1, %ecx
	call	clock_gettime64
	movl	$40000, %ecx
	call	malloc
	movq	%rax, %r8
	movq	%rax, %rcx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
.L69:
	movl	(%rsi,%rax), %edx
	addl	(%rbx,%rax), %edx
	addq	$4, %rax
	addq	$4, %rcx
	movl	%edx, -4(%rcx)
	cmpq	$40000, %rax
	jne	.L69
	movq	%r8, %rcx
	call	free
	movq	%rdi, %rdx
	movl	$1, %ecx
	call	clock_gettime64
	movl	56(%rsp), %eax
	pxor	%xmm1, %xmm1
	subl	40(%rsp), %eax
	cvtsi2sdl	%eax, %xmm1
	pxor	%xmm0, %xmm0
	movq	48(%rsp), %rax
	subq	32(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC2(%rip), %xmm1
	addsd	%xmm0, %xmm1
	leaq	.LC4(%rip), %rcx
	movq	%xmm1, %rdx
	call	printf
	movq	%rbp, %rdx
	movl	$1, %ecx
	call	clock_gettime64
	movl	$40000, %ecx
	call	malloc
	leaq	40000(%rbx), %rdx
	movq	%rax, %rcx
	.p2align 6
	.p2align 4
	.p2align 3
.L70:
	movq	(%rsi), %xmm0
	addq	$8, %rbx
	addq	$8, %rsi
	addq	$8, %rax
	movq	-8(%rbx), %xmm1
	paddd	%xmm1, %xmm0
	movq	%xmm0, -8(%rax)
	cmpq	%rbx, %rdx
	jne	.L70
	call	free
	movq	%rdi, %rdx
	movl	$1, %ecx
	call	clock_gettime64
	movl	56(%rsp), %eax
	pxor	%xmm1, %xmm1
	subl	40(%rsp), %eax
	cvtsi2sdl	%eax, %xmm1
	pxor	%xmm0, %xmm0
	movq	48(%rsp), %rax
	subq	32(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC2(%rip), %xmm1
	addsd	%xmm0, %xmm1
	leaq	.LC5(%rip), %rcx
	movq	%xmm1, %rdx
	call	printf
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	call	benchmark1
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.long	0
	.long	1104006501
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders, r3) 15.2.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	clock_gettime64;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
