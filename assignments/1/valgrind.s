	.file	"valgrind.c"
# GNU C17 (Ubuntu 13.2.0-23ubuntu4) version 13.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# valgrind.c:11:   int sum = 0;
	movl	$0, -20(%rbp)	#, sum
# valgrind.c:13:   for (int ix = 0; ix < 10; ++ix) {
	movl	$0, -16(%rbp)	#, ix
# valgrind.c:13:   for (int ix = 0; ix < 10; ++ix) {
	jmp	.L2	#
.L3:
# valgrind.c:14:     as[ix] = ix;
	movl	-16(%rbp), %eax	# ix, tmp91
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-8(%rbp), %rax	# as, tmp92
	addq	%rax, %rdx	# tmp92, _3
# valgrind.c:14:     as[ix] = ix;
	movl	-16(%rbp), %eax	# ix, tmp93
	movl	%eax, (%rdx)	# tmp93, *_3
# valgrind.c:13:   for (int ix = 0; ix < 10; ++ix) {
	addl	$1, -16(%rbp)	#, ix
.L2:
# valgrind.c:13:   for (int ix = 0; ix < 10; ++ix) {
	cmpl	$9, -16(%rbp)	#, ix
	jle	.L3	#,
# valgrind.c:16:   for (int ix = 0; ix < 10; ++ix) {
	movl	$0, -12(%rbp)	#, ix
# valgrind.c:16:   for (int ix = 0; ix < 10; ++ix) {
	jmp	.L4	#
.L5:
# valgrind.c:17:     sum += as[ix];
	movl	-12(%rbp), %eax	# ix, tmp94
	cltq
	leaq	0(,%rax,4), %rdx	#, _5
	movq	-8(%rbp), %rax	# as, tmp95
	addq	%rdx, %rax	# _5, _6
	movl	(%rax), %eax	# *_6, _7
# valgrind.c:17:     sum += as[ix];
	addl	%eax, -20(%rbp)	# _7, sum
# valgrind.c:16:   for (int ix = 0; ix < 10; ++ix) {
	addl	$1, -12(%rbp)	#, ix
.L4:
# valgrind.c:16:   for (int ix = 0; ix < 10; ++ix) {
	cmpl	$9, -12(%rbp)	#, ix
	jle	.L5	#,
# valgrind.c:19:   printf("%d\n", sum);
	movl	-20(%rbp), %eax	# sum, tmp96
	movl	%eax, %esi	# tmp96,
	leaq	.LC0(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	movl	$0, %eax	#,
	call	printf@PLT	#
# valgrind.c:20:   free(as);
	movq	-8(%rbp), %rax	# as, tmp98
	movq	%rax, %rdi	# tmp98,
	call	free@PLT	#
	movl	$0, %eax	#, _19
# valgrind.c:21: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
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
