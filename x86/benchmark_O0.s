	.file	"benchmark.c"
	.text
	.globl	vec_add1
	.def	vec_add1;	.scl	2;	.type	32;	.endef
	.seh_proc	vec_add1
vec_add1:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	32(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %r8
	movq	-16(%rbp), %rax
	addq	%r8, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	32(%rbp), %eax
	jl	.L3
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	vec_add2
	.def	vec_add2;	.scl	2;	.type	32;	.endef
	.seh_proc	vec_add2
vec_add2:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movl	%r9d, 40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L6
.L7:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %r8
	movq	32(%rbp), %rax
	addq	%r8, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -4(%rbp)
.L6:
	movl	-4(%rbp), %eax
	cmpl	40(%rbp), %eax
	jl	.L7
	movq	32(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	vec_add3
	.def	vec_add3;	.scl	2;	.type	32;	.endef
	.seh_proc	vec_add3
vec_add3:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movl	%r9d, 40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %r8
	movq	32(%rbp), %rax
	addq	%r8, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %r8
	movq	32(%rbp), %rax
	addq	%r8, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$2, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	cmpl	40(%rbp), %eax
	jl	.L11
	movq	32(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
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
	.globl	benchmark1
	.def	benchmark1;	.scl	2;	.type	32;	.endef
	.seh_proc	benchmark1
benchmark1:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$224, %rsp
	.seh_stackalloc	224
	.seh_endprologue
	movl	$10000, -28(%rbp)
	movl	$1000, -32(%rbp)
	movl	-28(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L14
.L15:
	call	rand
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %r8
	movslq	%eax, %rdx
	imulq	$274877907, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$6, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	imull	$1000, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movl	%edx, (%r8)
	call	rand
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %r8
	movslq	%eax, %rdx
	imulq	$274877907, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$6, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	imull	$1000, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movl	%edx, (%r8)
	addl	$1, -4(%rbp)
.L14:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L15
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	leaq	.LC0(%rip), %rcx
	movl	%eax, %edx
	call	printf
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movl	-28(%rbp), %eax
	leaq	.LC1(%rip), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	printf
	movl	$1, -68(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	call	clock_gettime64
	movl	$0, -8(%rbp)
	jmp	.L17
.L18:
	movl	-28(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	vec_add1
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	free
	addl	$1, -8(%rbp)
.L17:
	movl	-8(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L18
	movl	$1, -100(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdx
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	call	clock_gettime64
	movq	-192(%rbp), %rdx
	movq	-176(%rbp), %rax
	subq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	movl	-184(%rbp), %edx
	movl	-168(%rbp), %eax
	subl	%eax, %edx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	.LC2(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	movq	-56(%rbp), %rdx
	leaq	.LC3(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	printf
	movl	$1, -84(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdx
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	call	clock_gettime64
	movl	-28(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L21
.L22:
	movl	-28(%rbp), %r8d
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	vec_add2
	movq	%rax, -16(%rbp)
	addl	$1, -20(%rbp)
.L21:
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L22
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movl	$1, -132(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdx
	movl	-132(%rbp), %eax
	movl	%eax, %ecx
	call	clock_gettime64
	movq	-192(%rbp), %rdx
	movq	-176(%rbp), %rax
	subq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	movl	-184(%rbp), %edx
	movl	-168(%rbp), %eax
	subl	%eax, %edx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	.LC2(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	movq	-56(%rbp), %rdx
	leaq	.LC4(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	printf
	movl	$1, -116(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdx
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	call	clock_gettime64
	movl	-28(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -16(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L25
.L26:
	movl	-28(%rbp), %r8d
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	vec_add3
	movq	%rax, -16(%rbp)
	addl	$1, -24(%rbp)
.L25:
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L26
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movl	$1, -148(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	call	clock_gettime64
	movq	-192(%rbp), %rdx
	movq	-176(%rbp), %rax
	subq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	movl	-184(%rbp), %edx
	movl	-168(%rbp), %eax
	subl	%eax, %edx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	.LC2(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	movq	-56(%rbp), %rdx
	leaq	.LC5(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	printf
	nop
	addq	$224, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	call	benchmark1
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
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
