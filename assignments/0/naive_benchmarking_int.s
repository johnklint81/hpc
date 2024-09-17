	.file	"naive_benchmarking.c"
# GNU C17 (Ubuntu 13.2.0-23ubuntu4) version 13.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC1:
	.string	"The sum is %ld.\n"
	.align 8
.LC2:
	.string	"The program took %f seconds to run.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# D.3300, D.3300
# naive_benchmarking.c:6:   clock_t start = clock();
	call	clock@PLT	#
	movq	%rax, -16(%rbp)	# tmp88, start
# naive_benchmarking.c:11:   const int iterations = 1E9;
	movl	$1000000000, -32(%rbp)	#, iterations
# naive_benchmarking.c:14:   for (int ix = 0; ix < iterations; ++ix) {
	movl	$0, -36(%rbp)	#, ix
# naive_benchmarking.c:14:   for (int ix = 0; ix < iterations; ++ix) {
	jmp	.L2	#
.L3:
# naive_benchmarking.c:15:     sum += ix;
	movl	-36(%rbp), %eax	# ix, tmp89
	cltq
	addq	%rax, -24(%rbp)	# _1, sum
# naive_benchmarking.c:14:   for (int ix = 0; ix < iterations; ++ix) {
	addl	$1, -36(%rbp)	#, ix
.L2:
# naive_benchmarking.c:14:   for (int ix = 0; ix < iterations; ++ix) {
	movl	-36(%rbp), %eax	# ix, tmp90
	cmpl	-32(%rbp), %eax	# iterations, tmp90
	jl	.L3	#,
# naive_benchmarking.c:17:   end = clock();
	call	clock@PLT	#
	movq	%rax, -8(%rbp)	# tmp91, end
# naive_benchmarking.c:18:   seconds = (float)(end - start) / CLOCKS_PER_SEC;
	movq	-8(%rbp), %rax	# end, tmp92
	subq	-16(%rbp), %rax	# start, _2
# naive_benchmarking.c:18:   seconds = (float)(end - start) / CLOCKS_PER_SEC;
	pxor	%xmm0, %xmm0	# _3
	cvtsi2ssq	%rax, %xmm0	# _2, _3
# naive_benchmarking.c:18:   seconds = (float)(end - start) / CLOCKS_PER_SEC;
	movss	.LC0(%rip), %xmm1	#, tmp94
	divss	%xmm1, %xmm0	# tmp94, tmp93
	movss	%xmm0, -28(%rbp)	# tmp93, seconds
# naive_benchmarking.c:19:   printf("The sum is %ld.\n", sum);
	movq	-24(%rbp), %rax	# sum, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	movl	$0, %eax	#,
	call	printf@PLT	#
# naive_benchmarking.c:20:   printf("The program took %f seconds to run.\n", seconds);
	pxor	%xmm2, %xmm2	# _4
	cvtss2sd	-28(%rbp), %xmm2	# seconds, _4
	movq	%xmm2, %rax	# _4, _4
	movq	%rax, %xmm0	# _4,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	movl	$1, %eax	#,
	call	printf@PLT	#
	movl	$0, %eax	#, _18
# naive_benchmarking.c:21: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1232348160
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
