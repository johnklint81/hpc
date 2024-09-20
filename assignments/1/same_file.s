	.file	"same_file.c"
# GNU C17 (Ubuntu 13.2.0-23ubuntu4) version 13.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/j/dev/hpc/assignments/1" "same_file.c"
	.p2align 4
	.globl	mul_cpx
	.type	mul_cpx, @function
mul_cpx:
.LVL0:
.LFB39:
	.file 1 "same_file.c"
	.loc 1 10 45 view -0
	.cfi_startproc
	.loc 1 10 45 is_stmt 0 view .LVU1
	endbr64	
	.loc 1 11 3 is_stmt 1 view .LVU2
# same_file.c:11:   *a_re = *b_re * *c_re - *b_im * *c_im;
	.loc 1 11 17 is_stmt 0 view .LVU3
	movsd	(%rdx), %xmm0	# *b_re_16(D), *b_re_16(D)
# same_file.c:11:   *a_re = *b_re * *c_re - *b_im * *c_im;
	.loc 1 11 33 view .LVU4
	movsd	(%rcx), %xmm1	# *b_im_18(D), *b_im_18(D)
# same_file.c:11:   *a_re = *b_re * *c_re - *b_im * *c_im;
	.loc 1 11 17 view .LVU5
	mulsd	(%r8), %xmm0	# *c_re_17(D), tmp102
# same_file.c:11:   *a_re = *b_re * *c_re - *b_im * *c_im;
	.loc 1 11 33 view .LVU6
	mulsd	(%r9), %xmm1	# *c_im_19(D), tmp104
# same_file.c:11:   *a_re = *b_re * *c_re - *b_im * *c_im;
	.loc 1 11 25 view .LVU7
	subsd	%xmm1, %xmm0	# tmp104, tmp106
# same_file.c:11:   *a_re = *b_re * *c_re - *b_im * *c_im;
	.loc 1 11 9 view .LVU8
	movsd	%xmm0, (%rdi)	# tmp106, *a_re_20(D)
	.loc 1 12 3 is_stmt 1 view .LVU9
# same_file.c:12:   *a_im = *b_re * *c_im + *b_im * *c_re;
	.loc 1 12 17 is_stmt 0 view .LVU10
	movsd	(%rdx), %xmm0	# *b_re_16(D), *b_re_16(D)
# same_file.c:12:   *a_im = *b_re * *c_im + *b_im * *c_re;
	.loc 1 12 33 view .LVU11
	movsd	(%rcx), %xmm1	# *b_im_18(D), *b_im_18(D)
# same_file.c:12:   *a_im = *b_re * *c_im + *b_im * *c_re;
	.loc 1 12 17 view .LVU12
	mulsd	(%r9), %xmm0	# *c_im_19(D), tmp107
# same_file.c:12:   *a_im = *b_re * *c_im + *b_im * *c_re;
	.loc 1 12 33 view .LVU13
	mulsd	(%r8), %xmm1	# *c_re_17(D), tmp109
# same_file.c:12:   *a_im = *b_re * *c_im + *b_im * *c_re;
	.loc 1 12 25 view .LVU14
	addsd	%xmm1, %xmm0	# tmp109, tmp111
# same_file.c:12:   *a_im = *b_re * *c_im + *b_im * *c_re;
	.loc 1 12 9 view .LVU15
	movsd	%xmm0, (%rsi)	# tmp111, *a_im_22(D)
# same_file.c:13: }
	.loc 1 13 1 view .LVU16
	ret	
	.cfi_endproc
.LFE39:
	.size	mul_cpx, .-mul_cpx
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Random element of as_re and as_im are: (%f, %f)\n"
	.align 8
.LC3:
	.string	"Function in same file took %f seconds to run.\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB40:
	.loc 1 15 16 is_stmt 1 view -0
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# same_file.c:18:   clock_gettime(CLOCK_MONOTONIC, &bench_start_time);
	.loc 1 18 3 is_stmt 0 view .LVU18
	movl	$1, %edi	#,
# same_file.c:29:   double *cs_im = malloc(len * sizeof(double));
	.loc 1 29 19 view .LVU19
	xorl	%r15d, %r15d	# ivtmp.59
# same_file.c:15: int main(void) {
	.loc 1 15 16 view .LVU20
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 128
# same_file.c:15: int main(void) {
	.loc 1 15 16 view .LVU21
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp202
	movq	%rax, 56(%rsp)	# tmp202, D.4274
	xorl	%eax, %eax	# tmp202
	.loc 1 16 3 is_stmt 1 view .LVU22
	.loc 1 17 3 view .LVU23
	.loc 1 18 3 view .LVU24
	leaq	16(%rsp), %rsi	#, tmp133
	call	clock_gettime@PLT	#
.LVL1:
	.loc 1 19 3 view .LVU25
	.loc 1 20 3 view .LVU26
	.loc 1 21 3 view .LVU27
# same_file.c:21:   srand(time(NULL));
	.loc 1 21 9 is_stmt 0 view .LVU28
	xorl	%edi, %edi	#
	call	time@PLT	#
.LVL2:
# same_file.c:21:   srand(time(NULL));
	.loc 1 21 3 discriminator 1 view .LVU29
	movl	%eax, %edi	# tmp189, _1
	call	srand@PLT	#
.LVL3:
	.loc 1 23 3 is_stmt 1 view .LVU30
# same_file.c:23:   double *as_re = malloc(len * sizeof(double));
	.loc 1 23 19 is_stmt 0 view .LVU31
	movl	$240000, %edi	#,
	call	malloc@PLT	#
.LVL4:
# same_file.c:24:   double *bs_re = malloc(len * sizeof(double));
	.loc 1 24 19 view .LVU32
	movl	$240000, %edi	#,
# same_file.c:23:   double *as_re = malloc(len * sizeof(double));
	.loc 1 23 19 view .LVU33
	movq	%rax, %r14	# tmp190, as_re
.LVL5:
	.loc 1 24 3 is_stmt 1 view .LVU34
# same_file.c:24:   double *bs_re = malloc(len * sizeof(double));
	.loc 1 24 19 is_stmt 0 view .LVU35
	call	malloc@PLT	#
.LVL6:
# same_file.c:25:   double *cs_re = malloc(len * sizeof(double));
	.loc 1 25 19 view .LVU36
	movl	$240000, %edi	#,
# same_file.c:24:   double *bs_re = malloc(len * sizeof(double));
	.loc 1 24 19 view .LVU37
	movq	%rax, %r12	# tmp191, bs_re
.LVL7:
	.loc 1 25 3 is_stmt 1 view .LVU38
# same_file.c:25:   double *cs_re = malloc(len * sizeof(double));
	.loc 1 25 19 is_stmt 0 view .LVU39
	call	malloc@PLT	#
.LVL8:
# same_file.c:27:   double *as_im = malloc(len * sizeof(double));
	.loc 1 27 19 view .LVU40
	movl	$240000, %edi	#,
# same_file.c:25:   double *cs_re = malloc(len * sizeof(double));
	.loc 1 25 19 view .LVU41
	movq	%rax, %rbp	# tmp192, cs_re
.LVL9:
	.loc 1 27 3 is_stmt 1 view .LVU42
# same_file.c:27:   double *as_im = malloc(len * sizeof(double));
	.loc 1 27 19 is_stmt 0 view .LVU43
	call	malloc@PLT	#
.LVL10:
# same_file.c:28:   double *bs_im = malloc(len * sizeof(double));
	.loc 1 28 19 view .LVU44
	movl	$240000, %edi	#,
# same_file.c:27:   double *as_im = malloc(len * sizeof(double));
	.loc 1 27 19 view .LVU45
	movq	%rax, %r13	# tmp193, as_im
.LVL11:
	.loc 1 28 3 is_stmt 1 view .LVU46
# same_file.c:28:   double *bs_im = malloc(len * sizeof(double));
	.loc 1 28 19 is_stmt 0 view .LVU47
	call	malloc@PLT	#
.LVL12:
# same_file.c:29:   double *cs_im = malloc(len * sizeof(double));
	.loc 1 29 19 view .LVU48
	movl	$240000, %edi	#,
# same_file.c:28:   double *bs_im = malloc(len * sizeof(double));
	.loc 1 28 19 view .LVU49
	movq	%rax, (%rsp)	# tmp194, %sfp
.LVL13:
	.loc 1 29 3 is_stmt 1 view .LVU50
# same_file.c:29:   double *cs_im = malloc(len * sizeof(double));
	.loc 1 29 19 is_stmt 0 view .LVU51
	call	malloc@PLT	#
.LVL14:
	.loc 1 29 19 view .LVU52
	movq	%rax, %rbx	# tmp195, cs_im
.LVL15:
	.loc 1 31 3 is_stmt 1 view .LVU53
.LBB18:
	.loc 1 31 8 view .LVU54
	.loc 1 31 21 discriminator 1 view .LVU55
	.p2align 4,,10
	.p2align 3
.L4:
	.loc 1 32 5 view .LVU56
# same_file.c:32:     bs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 32 24 is_stmt 0 view .LVU57
	call	rand@PLT	#
.LVL16:
# same_file.c:32:     bs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 32 16 discriminator 1 view .LVU58
	pxor	%xmm0, %xmm0	# tmp141
	cvtsi2sdl	%eax, %xmm0	# tmp196, tmp141
# same_file.c:32:     bs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 32 31 discriminator 1 view .LVU59
	divsd	.LC0(%rip), %xmm0	#, tmp142
# same_file.c:32:     bs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 32 14 discriminator 1 view .LVU60
	movsd	%xmm0, (%r12,%r15)	# tmp142, MEM[(double *)bs_re_58 + ivtmp.59_109 * 1]
	.loc 1 33 5 is_stmt 1 view .LVU61
# same_file.c:33:     cs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 33 24 is_stmt 0 view .LVU62
	call	rand@PLT	#
.LVL17:
# same_file.c:33:     cs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 33 16 discriminator 1 view .LVU63
	pxor	%xmm0, %xmm0	# tmp144
	cvtsi2sdl	%eax, %xmm0	# tmp197, tmp144
# same_file.c:33:     cs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 33 31 discriminator 1 view .LVU64
	divsd	.LC0(%rip), %xmm0	#, tmp145
# same_file.c:33:     cs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 33 14 discriminator 1 view .LVU65
	movsd	%xmm0, 0(%rbp,%r15)	# tmp145, MEM[(double *)cs_re_60 + ivtmp.59_109 * 1]
	.loc 1 35 5 is_stmt 1 view .LVU66
# same_file.c:35:     bs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 35 24 is_stmt 0 view .LVU67
	call	rand@PLT	#
.LVL18:
# same_file.c:35:     bs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 35 16 discriminator 1 view .LVU68
	pxor	%xmm0, %xmm0	# tmp147
	cvtsi2sdl	%eax, %xmm0	# tmp198, tmp147
# same_file.c:35:     bs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 35 14 discriminator 1 view .LVU69
	movq	(%rsp), %rax	# %sfp, bs_im
# same_file.c:35:     bs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 35 31 discriminator 1 view .LVU70
	divsd	.LC0(%rip), %xmm0	#, tmp148
# same_file.c:35:     bs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 35 14 discriminator 1 view .LVU71
	movsd	%xmm0, (%rax,%r15)	# tmp148, MEM[(double *)bs_im_64 + ivtmp.59_109 * 1]
	.loc 1 36 5 is_stmt 1 view .LVU72
# same_file.c:36:     cs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 36 24 is_stmt 0 view .LVU73
	call	rand@PLT	#
.LVL19:
# same_file.c:36:     cs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 36 16 discriminator 1 view .LVU74
	pxor	%xmm0, %xmm0	# tmp150
	cvtsi2sdl	%eax, %xmm0	# tmp199, tmp150
# same_file.c:36:     cs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 36 31 discriminator 1 view .LVU75
	divsd	.LC0(%rip), %xmm0	#, tmp151
# same_file.c:36:     cs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 36 14 discriminator 1 view .LVU76
	movsd	%xmm0, (%rbx,%r15)	# tmp151, MEM[(double *)cs_im_66 + ivtmp.59_109 * 1]
	.loc 1 31 29 is_stmt 1 discriminator 3 view .LVU77
.LVL20:
	.loc 1 31 21 discriminator 1 view .LVU78
	addq	$8, %r15	#, ivtmp.59
.LVL21:
	.loc 1 31 21 is_stmt 0 discriminator 1 view .LVU79
	cmpq	$240000, %r15	#, ivtmp.59
	jne	.L4	#,
	movl	$200000, %edx	#, ivtmp_105
.L5:
.LVL22:
	.loc 1 31 21 discriminator 1 view .LVU80
.LBE18:
.LBB19:
.LBB20:
	.loc 1 40 23 is_stmt 1 discriminator 1 view .LVU81
.LBE20:
.LBE19:
# same_file.c:29:   double *cs_im = malloc(len * sizeof(double));
	.loc 1 29 19 is_stmt 0 view .LVU82
	xorl	%eax, %eax	# ivtmp.32
.LVL23:
	.p2align 4,,10
	.p2align 3
.L6:
.LBB24:
.LBB23:
	.loc 1 41 7 is_stmt 1 view .LVU83
.LBB21:
.LBI21:
	.loc 1 9 6 view .LVU84
.LBB22:
	.loc 1 11 3 view .LVU85
# same_file.c:11:   *a_re = *b_re * *c_re - *b_im * *c_im;
	.loc 1 11 17 is_stmt 0 view .LVU86
	movupd	(%r12,%rax), %xmm3	# MEM <vector(2) double> [(double *)bs_re_58 + ivtmp.32_108 * 1], tmp208
	movupd	0(%rbp,%rax), %xmm0	# MEM <vector(2) double> [(double *)cs_re_60 + ivtmp.32_108 * 1], vect__92.17
# same_file.c:11:   *a_re = *b_re * *c_re - *b_im * *c_im;
	.loc 1 11 33 view .LVU87
	movupd	(%rbx,%rax), %xmm1	# MEM <vector(2) double> [(double *)cs_im_66 + ivtmp.32_108 * 1], vect__94.21
# same_file.c:11:   *a_re = *b_re * *c_re - *b_im * *c_im;
	.loc 1 11 17 view .LVU88
	mulpd	%xmm3, %xmm0	# tmp208, vect__92.17
# same_file.c:11:   *a_re = *b_re * *c_re - *b_im * *c_im;
	.loc 1 11 33 view .LVU89
	mulpd	%xmm3, %xmm1	# tmp210, vect__94.21
# same_file.c:11:   *a_re = *b_re * *c_re - *b_im * *c_im;
	.loc 1 11 25 view .LVU90
	movapd	%xmm0, %xmm2	# vect__92.17, vect__95.22
	subpd	%xmm1, %xmm2	# vect__94.21, vect__95.22
# same_file.c:12:   *a_im = *b_re * *c_im + *b_im * *c_re;
	.loc 1 12 25 view .LVU91
	addpd	%xmm1, %xmm0	# vect__94.21, vect__96.25
# same_file.c:11:   *a_re = *b_re * *c_re - *b_im * *c_im;
	.loc 1 11 9 view .LVU92
	movups	%xmm2, (%r14,%rax)	# vect__95.22, MEM <vector(2) double> [(double *)as_re_56 + ivtmp.32_108 * 1]
	.loc 1 12 3 is_stmt 1 view .LVU93
# same_file.c:12:   *a_im = *b_re * *c_im + *b_im * *c_re;
	.loc 1 12 9 is_stmt 0 view .LVU94
	movups	%xmm0, 0(%r13,%rax)	# vect__96.25, MEM <vector(2) double> [(double *)as_im_62 + ivtmp.32_108 * 1]
.LVL24:
	.loc 1 12 9 view .LVU95
.LBE22:
.LBE21:
	.loc 1 40 31 is_stmt 1 discriminator 3 view .LVU96
	.loc 1 40 23 discriminator 1 view .LVU97
	addq	$16, %rax	#, ivtmp.32
	cmpq	$240000, %rax	#, ivtmp.32
	jne	.L6	#,
.LBE23:
	.loc 1 39 36 discriminator 2 view .LVU98
	.loc 1 39 21 discriminator 1 view .LVU99
	subl	$1, %edx	#, ivtmp_105
	jne	.L5	#,
.LBE24:
	.loc 1 44 3 view .LVU100
# same_file.c:44:   int r = rand() % (len + 1);
	.loc 1 44 11 is_stmt 0 view .LVU101
	call	rand@PLT	#
.LVL25:
# same_file.c:46:   clock_gettime(CLOCK_MONOTONIC, &bench_stop_time);
	.loc 1 46 3 view .LVU102
	leaq	32(%rsp), %rsi	#, tmp158
	movl	$1, %edi	#,
# same_file.c:44:   int r = rand() % (len + 1);
	.loc 1 44 11 view .LVU103
	movl	%eax, %r15d	# tmp200, _28
.LVL26:
	.loc 1 46 3 is_stmt 1 view .LVU104
	call	clock_gettime@PLT	#
.LVL27:
	.loc 1 47 3 view .LVU105
# same_file.c:47:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 47 22 is_stmt 0 view .LVU106
	movq	16(%rsp), %rsi	# bench_start_time.tv_sec,
	movq	32(%rsp), %rdi	# bench_stop_time.tv_sec,
	call	difftime@PLT	#
.LVL28:
	.loc 1 49 3 is_stmt 1 view .LVU107
# same_file.c:48:     (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
	.loc 1 48 30 is_stmt 0 view .LVU108
	movq	40(%rsp), %rsi	# bench_stop_time.tv_nsec, bench_stop_time.tv_nsec
	subq	24(%rsp), %rsi	# bench_start_time.tv_nsec, tmp161
# same_file.c:48:     (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
	.loc 1 48 58 view .LVU109
	movabsq	$2361183241434822607, %rax	#, tmp203
	imulq	%rsi	# tmp161
# same_file.c:47:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 47 22 view .LVU110
	movapd	%xmm0, %xmm1	#, tmp201
# same_file.c:48:     (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
	.loc 1 48 58 view .LVU111
	sarq	$63, %rsi	#, tmp167
# same_file.c:47:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 47 90 view .LVU112
	pxor	%xmm0, %xmm0	# tmp168
# same_file.c:47:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 47 80 discriminator 1 view .LVU113
	movsd	.LC1(%rip), %xmm2	#, tmp170
# same_file.c:44:   int r = rand() % (len + 1);
	.loc 1 44 7 discriminator 1 view .LVU114
	movl	%r15d, %r8d	# _28, _28
.LBB25:
.LBB26:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 86 10 view .LVU115
	movl	$2, %edi	#,
.LBE26:
.LBE25:
# same_file.c:47:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 47 80 discriminator 1 view .LVU116
	mulsd	%xmm2, %xmm1	# tmp170, tmp169
# same_file.c:48:     (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
	.loc 1 48 58 view .LVU117
	movq	%rdx, %rax	# tmp164, tmp164
# same_file.c:44:   int r = rand() % (len + 1);
	.loc 1 44 7 discriminator 1 view .LVU118
	movl	%r15d, %edx	# _28, tmp178
# same_file.c:48:     (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
	.loc 1 48 58 view .LVU119
	sarq	$7, %rax	#, tmp164
# same_file.c:44:   int r = rand() % (len + 1);
	.loc 1 44 7 discriminator 1 view .LVU120
	sarl	$31, %edx	#, tmp178
# same_file.c:48:     (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
	.loc 1 48 58 view .LVU121
	subq	%rsi, %rax	# tmp167, tmp163
.LBB30:
.LBB27:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 view .LVU122
	leaq	.LC2(%rip), %rsi	#, tmp184
.LBE27:
.LBE30:
# same_file.c:47:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 47 90 view .LVU123
	cvtsi2sdq	%rax, %xmm0	# tmp163, tmp168
# same_file.c:44:   int r = rand() % (len + 1);
	.loc 1 44 7 discriminator 1 view .LVU124
	movslq	%r15d, %rax	# _28, _28
	imulq	$1172773311, %rax, %rax	#, _28, tmp175
# same_file.c:47:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 47 90 view .LVU125
	addsd	%xmm1, %xmm0	# tmp169, tmp171
# same_file.c:44:   int r = rand() % (len + 1);
	.loc 1 44 7 discriminator 1 view .LVU126
	sarq	$45, %rax	#, tmp177
	subl	%edx, %eax	# tmp178, tmp173
	imull	$30001, %eax, %eax	#, tmp173, tmp179
# same_file.c:47:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 47 19 view .LVU127
	divsd	%xmm2, %xmm0	# tmp170, tmp171
# same_file.c:44:   int r = rand() % (len + 1);
	.loc 1 44 7 discriminator 1 view .LVU128
	subl	%eax, %r8d	# tmp179, _28
# same_file.c:49:   printf("Random element of as_re and as_im are: (%f, %f)\n", as_re[r], as_im[r]);
	.loc 1 49 78 view .LVU129
	movslq	%r8d, %rax	# r, r
.LVL29:
.LBB31:
.LBI25:
	.loc 2 84 1 is_stmt 1 view .LVU130
.LBB28:
	.loc 2 86 3 view .LVU131
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU132
	movsd	0(%r13,%rax,8), %xmm1	# *_41,
.LBE28:
.LBE31:
# same_file.c:47:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 47 19 view .LVU133
	movsd	%xmm0, 8(%rsp)	# tmp171, %sfp
.LVL30:
.LBB32:
.LBB29:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 view .LVU134
	movsd	(%r14,%rax,8), %xmm0	# *_43, *_43
	movl	$2, %eax	#,
	call	__printf_chk@PLT	#
.LVL31:
	.loc 2 86 10 view .LVU135
.LBE29:
.LBE32:
	.loc 1 50 3 is_stmt 1 view .LVU136
.LBB33:
.LBI33:
	.loc 2 84 1 view .LVU137
.LBB34:
	.loc 2 86 3 view .LVU138
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU139
	movsd	8(%rsp), %xmm0	# %sfp,
	movl	$2, %edi	#,
	leaq	.LC3(%rip), %rsi	#, tmp185
	movl	$1, %eax	#,
	call	__printf_chk@PLT	#
.LVL32:
	.loc 2 86 10 view .LVU140
.LBE34:
.LBE33:
	.loc 1 51 3 is_stmt 1 view .LVU141
	movq	%r14, %rdi	# as_re,
	call	free@PLT	#
.LVL33:
	.loc 1 52 3 view .LVU142
	movq	%r12, %rdi	# bs_re,
	call	free@PLT	#
.LVL34:
	.loc 1 53 3 view .LVU143
	movq	%rbp, %rdi	# cs_re,
	call	free@PLT	#
.LVL35:
	.loc 1 54 3 view .LVU144
	movq	%r13, %rdi	# as_im,
	call	free@PLT	#
.LVL36:
	.loc 1 55 3 view .LVU145
	movq	(%rsp), %rdi	# %sfp,
	call	free@PLT	#
.LVL37:
	.loc 1 56 3 view .LVU146
	movq	%rbx, %rdi	# cs_im,
	call	free@PLT	#
.LVL38:
# same_file.c:57: }
	.loc 1 57 1 is_stmt 0 view .LVU147
	movq	56(%rsp), %rax	# D.4274, tmp204
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp204
	jne	.L12	#,
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 48
.LVL39:
	.loc 1 57 1 view .LVU148
	popq	%rbp	#
	.cfi_def_cfa_offset 40
.LVL40:
	.loc 1 57 1 view .LVU149
	popq	%r12	#
	.cfi_def_cfa_offset 32
.LVL41:
	.loc 1 57 1 view .LVU150
	popq	%r13	#
	.cfi_def_cfa_offset 24
.LVL42:
	.loc 1 57 1 view .LVU151
	popq	%r14	#
	.cfi_def_cfa_offset 16
.LVL43:
	.loc 1 57 1 view .LVU152
	popq	%r15	#
	.cfi_def_cfa_offset 8
.LVL44:
	.loc 1 57 1 view .LVU153
	ret	
.LVL45:
.L12:
	.cfi_restore_state
	.loc 1 57 1 view .LVU154
	call	__stack_chk_fail@PLT	#
.LVL46:
	.cfi_endproc
.LFE40:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-4194304
	.long	1105199103
	.align 8
.LC1:
	.long	0
	.long	1093567616
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/stdio2-decl.h"
	.file 9 "/usr/include/time.h"
	.file 10 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x695
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x15
	.long	.LASF46
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL15
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0x8
	.long	.LASF10
	.byte	0x3
	.byte	0xd6
	.byte	0x17
	.long	0x3d
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x16
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x70
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xa9
	.byte	0x1d
	.long	0x69
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xc5
	.byte	0x21
	.long	0x70
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x18
	.long	0x9b
	.uleb128 0xb
	.long	0xa2
	.uleb128 0x19
	.long	0xa7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0x7
	.byte	0x15
	.long	0x83
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.byte	0xa
	.byte	0x12
	.long	0x77
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x10
	.byte	0x7
	.byte	0xb
	.byte	0x8
	.long	0xf6
	.uleb128 0xe
	.long	.LASF18
	.byte	0x10
	.byte	0xc
	.long	0x77
	.byte	0
	.uleb128 0xe
	.long	.LASF19
	.byte	0x15
	.byte	0x15
	.long	0x8f
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF20
	.uleb128 0xc
	.long	.LASF21
	.byte	0x8
	.byte	0x34
	.byte	0xc
	.long	0x69
	.long	0x119
	.uleb128 0x4
	.long	0x69
	.uleb128 0x4
	.long	0xa7
	.uleb128 0xf
	.byte	0
	.uleb128 0x10
	.long	.LASF24
	.value	0x2af
	.long	0x12a
	.uleb128 0x4
	.long	0x4b
	.byte	0
	.uleb128 0xc
	.long	.LASF22
	.byte	0x9
	.byte	0x4f
	.byte	0xf
	.long	0x2a
	.long	0x145
	.uleb128 0x4
	.long	0xc4
	.uleb128 0x4
	.long	0xc4
	.byte	0
	.uleb128 0x1b
	.long	.LASF48
	.byte	0xa
	.value	0x23d
	.byte	0xc
	.long	0x69
	.uleb128 0x11
	.long	.LASF23
	.byte	0xa
	.value	0x2a0
	.byte	0xe
	.long	0x4b
	.long	0x169
	.uleb128 0x4
	.long	0x31
	.byte	0
	.uleb128 0x10
	.long	.LASF25
	.value	0x23f
	.long	0x17a
	.uleb128 0x4
	.long	0x44
	.byte	0
	.uleb128 0xc
	.long	.LASF26
	.byte	0x9
	.byte	0x4c
	.byte	0xf
	.long	0xc4
	.long	0x190
	.uleb128 0x4
	.long	0x190
	.byte	0
	.uleb128 0xb
	.long	0xc4
	.uleb128 0x11
	.long	.LASF27
	.byte	0x9
	.value	0x121
	.byte	0xc
	.long	0x69
	.long	0x1b1
	.uleb128 0x4
	.long	0xb8
	.uleb128 0x4
	.long	0x1b1
	.byte	0
	.uleb128 0xb
	.long	0xd0
	.uleb128 0x1c
	.long	.LASF49
	.byte	0x1
	.byte	0xf
	.byte	0x5
	.long	0x69
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cf
	.uleb128 0x12
	.long	.LASF28
	.byte	0x13
	.long	0xd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.long	.LASF29
	.byte	0x25
	.long	0xd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x6
	.long	.LASF31
	.byte	0x11
	.byte	0xa
	.long	0x2a
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0x13
	.byte	0x7
	.long	0x69
	.value	0x7530
	.uleb128 0x1e
	.long	.LASF30
	.byte	0x1
	.byte	0x14
	.byte	0x7
	.long	0x69
	.long	0x30d40
	.uleb128 0x6
	.long	.LASF32
	.byte	0x17
	.byte	0xb
	.long	0x5cf
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x6
	.long	.LASF33
	.byte	0x18
	.byte	0xb
	.long	0x5cf
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x6
	.long	.LASF34
	.byte	0x19
	.byte	0xb
	.long	0x5cf
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x6
	.long	.LASF35
	.byte	0x1b
	.byte	0xb
	.long	0x5cf
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x6
	.long	.LASF36
	.byte	0x1c
	.byte	0xb
	.long	0x5cf
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x6
	.long	.LASF37
	.byte	0x1d
	.byte	0xb
	.long	0x5cf
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0xd
	.string	"r"
	.byte	0x2c
	.byte	0x7
	.long	0x69
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x1f
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x303
	.uleb128 0xd
	.string	"i"
	.byte	0x1f
	.byte	0xc
	.long	0x69
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x5
	.quad	.LVL16
	.long	0x145
	.uleb128 0x5
	.quad	.LVL17
	.long	0x145
	.uleb128 0x5
	.quad	.LVL18
	.long	0x145
	.uleb128 0x5
	.quad	.LVL19
	.long	0x145
	.byte	0
	.uleb128 0x20
	.long	.LLRL9
	.long	0x36e
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.byte	0x27
	.byte	0xc
	.long	0x69
	.uleb128 0x22
	.long	.LLRL10
	.uleb128 0xd
	.string	"i"
	.byte	0x28
	.byte	0xe
	.long	0x69
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x23
	.long	0x5d4
	.quad	.LBI21
	.byte	.LVU84
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.byte	0x1
	.byte	0x29
	.byte	0x7
	.uleb128 0x9
	.long	0x61d
	.uleb128 0x9
	.long	0x611
	.uleb128 0x9
	.long	0x605
	.uleb128 0x9
	.long	0x5f9
	.uleb128 0x9
	.long	0x5ed
	.uleb128 0x9
	.long	0x5e1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x62a
	.quad	.LBI25
	.byte	.LVU130
	.long	.LLRL12
	.byte	0x1
	.byte	0x31
	.byte	0x3
	.long	0x3b5
	.uleb128 0x13
	.long	0x63b
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x14
	.quad	.LVL31
	.long	0xfd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x62a
	.quad	.LBI33
	.byte	.LVU137
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.byte	0x1
	.byte	0x32
	.byte	0x3
	.long	0x412
	.uleb128 0x13
	.long	0x63b
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x14
	.quad	.LVL32
	.long	0xfd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -120
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL1
	.long	0x195
	.long	0x430
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2
	.quad	.LVL2
	.long	0x17a
	.long	0x448
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL3
	.long	0x169
	.uleb128 0x2
	.quad	.LVL4
	.long	0x152
	.long	0x470
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x3a980
	.byte	0
	.uleb128 0x2
	.quad	.LVL6
	.long	0x152
	.long	0x48b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x3a980
	.byte	0
	.uleb128 0x2
	.quad	.LVL8
	.long	0x152
	.long	0x4a6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x3a980
	.byte	0
	.uleb128 0x2
	.quad	.LVL10
	.long	0x152
	.long	0x4c1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x3a980
	.byte	0
	.uleb128 0x2
	.quad	.LVL12
	.long	0x152
	.long	0x4dc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x3a980
	.byte	0
	.uleb128 0x2
	.quad	.LVL14
	.long	0x152
	.long	0x4f7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x3a980
	.byte	0
	.uleb128 0x5
	.quad	.LVL25
	.long	0x145
	.uleb128 0x2
	.quad	.LVL27
	.long	0x195
	.long	0x522
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x5
	.quad	.LVL28
	.long	0x12a
	.uleb128 0x2
	.quad	.LVL33
	.long	0x119
	.long	0x547
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL34
	.long	0x119
	.long	0x55f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL35
	.long	0x119
	.long	0x577
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL36
	.long	0x119
	.long	0x58f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL37
	.long	0x119
	.long	0x5a9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL38
	.long	0x119
	.long	0x5c1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL46
	.long	0x68f
	.byte	0
	.uleb128 0xb
	.long	0x2a
	.uleb128 0x26
	.long	.LASF38
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.byte	0x1
	.long	0x62a
	.uleb128 0x7
	.long	.LASF39
	.byte	0x1
	.byte	0x9
	.byte	0x16
	.long	0x5cf
	.uleb128 0x7
	.long	.LASF40
	.byte	0x1
	.byte	0x9
	.byte	0x24
	.long	0x5cf
	.uleb128 0x7
	.long	.LASF41
	.byte	0x1
	.byte	0x9
	.byte	0x32
	.long	0x5cf
	.uleb128 0x7
	.long	.LASF42
	.byte	0x1
	.byte	0xa
	.byte	0xb
	.long	0x5cf
	.uleb128 0x7
	.long	.LASF43
	.byte	0x1
	.byte	0xa
	.byte	0x19
	.long	0x5cf
	.uleb128 0x7
	.long	.LASF44
	.byte	0x1
	.byte	0xa
	.byte	0x27
	.long	0x5cf
	.byte	0
	.uleb128 0x27
	.long	.LASF50
	.byte	0x2
	.byte	0x54
	.byte	0x1
	.long	0x69
	.byte	0x3
	.long	0x649
	.uleb128 0x7
	.long	.LASF45
	.byte	0x2
	.byte	0x54
	.byte	0x20
	.long	0xac
	.uleb128 0xf
	.byte	0
	.uleb128 0x28
	.long	0x5d4
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x68f
	.uleb128 0xa
	.long	0x5e1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xa
	.long	0x5ed
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xa
	.long	0x5f9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xa
	.long	0x605
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xa
	.long	0x611
	.uleb128 0x1
	.byte	0x58
	.uleb128 0xa
	.long	0x61d
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.uleb128 0x29
	.long	.LASF51
	.long	.LASF51
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 .LVU107
	.uleb128 .LVU134
.LLST0:
	.byte	0x8
	.quad	.LVL28
	.uleb128 .LVL30-.LVL28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
.LVUS1:
	.uleb128 .LVU34
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU152
	.uleb128 .LVU154
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL6-1-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-1-.LVL5
	.uleb128 .LVL43-.LVL5
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL45-.LVL5
	.uleb128 .LFE40-.LVL5
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS2:
	.uleb128 .LVU38
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU150
	.uleb128 .LVU154
	.uleb128 0
.LLST2:
	.byte	0x6
	.quad	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-1-.LVL7
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL8-1-.LVL7
	.uleb128 .LVL41-.LVL7
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL45-.LVL7
	.uleb128 .LFE40-.LVL7
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS3:
	.uleb128 .LVU42
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU149
	.uleb128 .LVU154
	.uleb128 0
.LLST3:
	.byte	0x6
	.quad	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL10-1-.LVL9
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL10-1-.LVL9
	.uleb128 .LVL40-.LVL9
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL45-.LVL9
	.uleb128 .LFE40-.LVL9
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS4:
	.uleb128 .LVU46
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU151
	.uleb128 .LVU154
	.uleb128 0
.LLST4:
	.byte	0x6
	.quad	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-1-.LVL11
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL12-1-.LVL11
	.uleb128 .LVL42-.LVL11
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL45-.LVL11
	.uleb128 .LFE40-.LVL11
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS5:
	.uleb128 .LVU50
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 0
.LLST5:
	.byte	0x6
	.quad	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-1-.LVL13
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL14-1-.LVL13
	.uleb128 .LFE40-.LVL13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
.LVUS6:
	.uleb128 .LVU53
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU148
	.uleb128 .LVU154
	.uleb128 0
.LLST6:
	.byte	0x6
	.quad	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL15-.LVL15
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL39-.LVL15
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL45-.LVL15
	.uleb128 .LFE40-.LVL15
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS7:
	.uleb128 .LVU104
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU153
	.uleb128 .LVU154
	.uleb128 0
.LLST7:
	.byte	0x6
	.quad	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL27-1-.LVL26
	.uleb128 0xb
	.byte	0x70
	.sleb128 0
	.byte	0xa
	.value	0x7531
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL27-1-.LVL26
	.uleb128 .LVL44-.LVL26
	.uleb128 0xb
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.value	0x7531
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL45-.LVL26
	.uleb128 .LFE40-.LVL26
	.uleb128 0xb
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.value	0x7531
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU55
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU104
.LLST8:
	.byte	0x6
	.quad	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL15-.LVL15
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL20-.LVL15
	.uleb128 0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.LVL15
	.uleb128 .LVL21-.LVL15
	.uleb128 0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL15
	.uleb128 .LVL26-.LVL15
	.uleb128 0x7
	.byte	0x7f
	.sleb128 -8
	.byte	0x33
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU80
	.uleb128 .LVU83
.LLST11:
	.byte	0x8
	.quad	.LVL22
	.uleb128 .LVL23-.LVL22
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU130
	.uleb128 .LVU135
.LLST13:
	.byte	0x8
	.quad	.LVL29
	.uleb128 .LVL31-.LVL29
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU137
	.uleb128 .LVU140
.LLST14:
	.byte	0x8
	.quad	.LVL31
	.uleb128 .LVL32-.LVL31
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL9:
	.byte	0x5
	.quad	.LBB19
	.byte	0x4
	.uleb128 .LBB19-.LBB19
	.uleb128 .LBE19-.LBB19
	.byte	0x4
	.uleb128 .LBB24-.LBB19
	.uleb128 .LBE24-.LBB19
	.byte	0
.LLRL10:
	.byte	0x5
	.quad	.LBB20
	.byte	0x4
	.uleb128 .LBB20-.LBB20
	.uleb128 .LBE20-.LBB20
	.byte	0x4
	.uleb128 .LBB23-.LBB20
	.uleb128 .LBE23-.LBB20
	.byte	0
.LLRL12:
	.byte	0x5
	.quad	.LBB25
	.byte	0x4
	.uleb128 .LBB25-.LBB25
	.uleb128 .LBE25-.LBB25
	.byte	0x4
	.uleb128 .LBB30-.LBB25
	.uleb128 .LBE30-.LBB25
	.byte	0x4
	.uleb128 .LBB31-.LBB25
	.uleb128 .LBE31-.LBB25
	.byte	0x4
	.uleb128 .LBB32-.LBB25
	.uleb128 .LBE32-.LBB25
	.byte	0
.LLRL15:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"bs_re"
.LASF41:
	.string	"b_re"
.LASF19:
	.string	"tv_nsec"
.LASF35:
	.string	"as_im"
.LASF28:
	.string	"bench_start_time"
.LASF25:
	.string	"srand"
.LASF21:
	.string	"__printf_chk"
.LASF40:
	.string	"a_im"
.LASF47:
	.string	"timespec"
.LASF5:
	.string	"unsigned char"
.LASF34:
	.string	"cs_re"
.LASF43:
	.string	"c_re"
.LASF3:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF10:
	.string	"size_t"
.LASF30:
	.string	"iterations"
.LASF36:
	.string	"bs_im"
.LASF51:
	.string	"__stack_chk_fail"
.LASF11:
	.string	"__time_t"
.LASF26:
	.string	"time"
.LASF42:
	.string	"b_im"
.LASF2:
	.string	"double"
.LASF13:
	.string	"__syscall_slong_t"
.LASF49:
	.string	"main"
.LASF29:
	.string	"bench_stop_time"
.LASF18:
	.string	"tv_sec"
.LASF4:
	.string	"unsigned int"
.LASF20:
	.string	"long long unsigned int"
.LASF17:
	.string	"time_t"
.LASF46:
	.string	"GNU C17 13.2.0 -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF37:
	.string	"cs_im"
.LASF27:
	.string	"clock_gettime"
.LASF38:
	.string	"mul_cpx"
.LASF24:
	.string	"free"
.LASF15:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF50:
	.string	"printf"
.LASF8:
	.string	"short int"
.LASF45:
	.string	"__fmt"
.LASF44:
	.string	"c_im"
.LASF9:
	.string	"long int"
.LASF22:
	.string	"difftime"
.LASF7:
	.string	"signed char"
.LASF39:
	.string	"a_re"
.LASF16:
	.string	"clockid_t"
.LASF12:
	.string	"__clockid_t"
.LASF31:
	.string	"bench_diff_time"
.LASF32:
	.string	"as_re"
.LASF23:
	.string	"malloc"
.LASF48:
	.string	"rand"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/j/dev/hpc/assignments/1"
.LASF0:
	.string	"same_file.c"
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
