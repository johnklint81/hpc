	.file	"inline_manually.c"
# GNU C17 (Ubuntu 13.2.0-23ubuntu4) version 13.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/j/dev/hpc/assignments/1" "inline_manually.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"First elements of as_re and as_im are: (%f, %f)\n"
	.align 8
.LC3:
	.string	"Function inserted in loop took %f seconds to run.\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB39:
	.file 1 "inline_manually.c"
	.loc 1 9 16 view -0
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# inline_manually.c:12:   clock_gettime(CLOCK_MONOTONIC, &bench_start_time);
	.loc 1 12 3 is_stmt 0 view .LVU1
	movl	$1, %edi	#,
# inline_manually.c:23:   double *cs_im = malloc(len * sizeof(double));
	.loc 1 23 19 view .LVU2
	xorl	%r15d, %r15d	# ivtmp.62
# inline_manually.c:9: int main(void) {
	.loc 1 9 16 view .LVU3
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
# inline_manually.c:9: int main(void) {
	.loc 1 9 16 view .LVU4
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp194
	movq	%rax, 56(%rsp)	# tmp194, D.4261
	xorl	%eax, %eax	# tmp194
	.loc 1 10 3 is_stmt 1 view .LVU5
	.loc 1 11 3 view .LVU6
	.loc 1 12 3 view .LVU7
	leaq	16(%rsp), %rsi	#, tmp130
	call	clock_gettime@PLT	#
.LVL0:
	.loc 1 13 3 view .LVU8
	.loc 1 14 3 view .LVU9
	.loc 1 15 3 view .LVU10
# inline_manually.c:15:   srand(time(NULL));
	.loc 1 15 9 is_stmt 0 view .LVU11
	xorl	%edi, %edi	#
	call	time@PLT	#
.LVL1:
# inline_manually.c:15:   srand(time(NULL));
	.loc 1 15 3 discriminator 1 view .LVU12
	movl	%eax, %edi	# tmp182, _1
	call	srand@PLT	#
.LVL2:
	.loc 1 17 3 is_stmt 1 view .LVU13
# inline_manually.c:17:   double *as_re = malloc(len * sizeof(double));
	.loc 1 17 19 is_stmt 0 view .LVU14
	movl	$240000, %edi	#,
	call	malloc@PLT	#
.LVL3:
# inline_manually.c:18:   double *bs_re = malloc(len * sizeof(double));
	.loc 1 18 19 view .LVU15
	movl	$240000, %edi	#,
# inline_manually.c:17:   double *as_re = malloc(len * sizeof(double));
	.loc 1 17 19 view .LVU16
	movq	%rax, 8(%rsp)	# as_re, %sfp
.LVL4:
	.loc 1 18 3 is_stmt 1 view .LVU17
# inline_manually.c:18:   double *bs_re = malloc(len * sizeof(double));
	.loc 1 18 19 is_stmt 0 view .LVU18
	call	malloc@PLT	#
.LVL5:
# inline_manually.c:19:   double *cs_re = malloc(len * sizeof(double));
	.loc 1 19 19 view .LVU19
	movl	$240000, %edi	#,
# inline_manually.c:18:   double *bs_re = malloc(len * sizeof(double));
	.loc 1 18 19 view .LVU20
	movq	%rax, %r13	# tmp184, bs_re
.LVL6:
	.loc 1 19 3 is_stmt 1 view .LVU21
# inline_manually.c:19:   double *cs_re = malloc(len * sizeof(double));
	.loc 1 19 19 is_stmt 0 view .LVU22
	call	malloc@PLT	#
.LVL7:
# inline_manually.c:21:   double *as_im = malloc(len * sizeof(double));
	.loc 1 21 19 view .LVU23
	movl	$240000, %edi	#,
# inline_manually.c:19:   double *cs_re = malloc(len * sizeof(double));
	.loc 1 19 19 view .LVU24
	movq	%rax, %r12	# tmp185, cs_re
.LVL8:
	.loc 1 21 3 is_stmt 1 view .LVU25
# inline_manually.c:21:   double *as_im = malloc(len * sizeof(double));
	.loc 1 21 19 is_stmt 0 view .LVU26
	call	malloc@PLT	#
.LVL9:
# inline_manually.c:22:   double *bs_im = malloc(len * sizeof(double));
	.loc 1 22 19 view .LVU27
	movl	$240000, %edi	#,
# inline_manually.c:21:   double *as_im = malloc(len * sizeof(double));
	.loc 1 21 19 view .LVU28
	movq	%rax, %r14	# tmp186, as_im
.LVL10:
	.loc 1 22 3 is_stmt 1 view .LVU29
# inline_manually.c:22:   double *bs_im = malloc(len * sizeof(double));
	.loc 1 22 19 is_stmt 0 view .LVU30
	call	malloc@PLT	#
.LVL11:
# inline_manually.c:23:   double *cs_im = malloc(len * sizeof(double));
	.loc 1 23 19 view .LVU31
	movl	$240000, %edi	#,
# inline_manually.c:22:   double *bs_im = malloc(len * sizeof(double));
	.loc 1 22 19 view .LVU32
	movq	%rax, %rbp	# tmp187, bs_im
.LVL12:
	.loc 1 23 3 is_stmt 1 view .LVU33
# inline_manually.c:23:   double *cs_im = malloc(len * sizeof(double));
	.loc 1 23 19 is_stmt 0 view .LVU34
	call	malloc@PLT	#
.LVL13:
	.loc 1 23 19 view .LVU35
	movq	8(%rsp), %rcx	# %sfp, as_re
	movq	%rax, %rbx	# tmp188, cs_im
.LVL14:
	.loc 1 25 3 is_stmt 1 view .LVU36
.LBB9:
	.loc 1 25 8 view .LVU37
	.loc 1 25 21 discriminator 1 view .LVU38
	.p2align 4,,10
	.p2align 3
.L2:
	.loc 1 25 21 is_stmt 0 discriminator 1 view .LVU39
	movq	%rcx, 8(%rsp)	# as_re, %sfp
.LVL15:
	.loc 1 26 5 is_stmt 1 view .LVU40
# inline_manually.c:26:     bs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 26 24 is_stmt 0 view .LVU41
	call	rand@PLT	#
.LVL16:
# inline_manually.c:26:     bs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 26 16 discriminator 1 view .LVU42
	pxor	%xmm0, %xmm0	# tmp138
	cvtsi2sdl	%eax, %xmm0	# tmp189, tmp138
# inline_manually.c:26:     bs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 26 31 discriminator 1 view .LVU43
	divsd	.LC0(%rip), %xmm0	#, tmp139
# inline_manually.c:26:     bs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 26 14 discriminator 1 view .LVU44
	movsd	%xmm0, 0(%r13,%r15)	# tmp139, MEM[(double *)bs_re_64 + ivtmp.62_106 * 1]
	.loc 1 27 5 is_stmt 1 view .LVU45
# inline_manually.c:27:     cs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 27 24 is_stmt 0 view .LVU46
	call	rand@PLT	#
.LVL17:
# inline_manually.c:27:     cs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 27 16 discriminator 1 view .LVU47
	pxor	%xmm0, %xmm0	# tmp141
	cvtsi2sdl	%eax, %xmm0	# tmp190, tmp141
# inline_manually.c:27:     cs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 27 31 discriminator 1 view .LVU48
	divsd	.LC0(%rip), %xmm0	#, tmp142
# inline_manually.c:27:     cs_re[i] = (double)rand() / RAND_MAX;
	.loc 1 27 14 discriminator 1 view .LVU49
	movsd	%xmm0, (%r12,%r15)	# tmp142, MEM[(double *)cs_re_66 + ivtmp.62_106 * 1]
	.loc 1 29 5 is_stmt 1 view .LVU50
# inline_manually.c:29:     bs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 29 24 is_stmt 0 view .LVU51
	call	rand@PLT	#
.LVL18:
# inline_manually.c:29:     bs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 29 16 discriminator 1 view .LVU52
	pxor	%xmm0, %xmm0	# tmp144
	cvtsi2sdl	%eax, %xmm0	# tmp191, tmp144
# inline_manually.c:29:     bs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 29 31 discriminator 1 view .LVU53
	divsd	.LC0(%rip), %xmm0	#, tmp145
# inline_manually.c:29:     bs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 29 14 discriminator 1 view .LVU54
	movsd	%xmm0, 0(%rbp,%r15)	# tmp145, MEM[(double *)bs_im_70 + ivtmp.62_106 * 1]
	.loc 1 30 5 is_stmt 1 view .LVU55
# inline_manually.c:30:     cs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 30 24 is_stmt 0 view .LVU56
	call	rand@PLT	#
.LVL19:
# inline_manually.c:30:     cs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 30 16 discriminator 1 view .LVU57
	pxor	%xmm0, %xmm0	# tmp147
# inline_manually.c:25:   for (int i = 0; i < len; i++) {
	.loc 1 25 21 discriminator 1 view .LVU58
	movq	8(%rsp), %rcx	# %sfp, as_re
# inline_manually.c:30:     cs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 30 16 discriminator 1 view .LVU59
	cvtsi2sdl	%eax, %xmm0	# tmp192, tmp147
# inline_manually.c:30:     cs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 30 31 discriminator 1 view .LVU60
	divsd	.LC0(%rip), %xmm0	#, tmp148
# inline_manually.c:30:     cs_im[i] = (double)rand() / RAND_MAX;
	.loc 1 30 14 discriminator 1 view .LVU61
	movsd	%xmm0, (%rbx,%r15)	# tmp148, MEM[(double *)cs_im_72 + ivtmp.62_106 * 1]
	.loc 1 25 29 is_stmt 1 discriminator 3 view .LVU62
.LVL20:
	.loc 1 25 21 discriminator 1 view .LVU63
	addq	$8, %r15	#, ivtmp.62
.LVL21:
	.loc 1 25 21 is_stmt 0 discriminator 1 view .LVU64
	cmpq	$240000, %r15	#, ivtmp.62
	jne	.L2	#,
	movl	$200000, %edx	#, ivtmp_115
.L3:
.LVL22:
	.loc 1 25 21 discriminator 1 view .LVU65
.LBE9:
.LBB10:
.LBB11:
	.loc 1 34 23 is_stmt 1 discriminator 1 view .LVU66
.LBE11:
.LBE10:
# inline_manually.c:23:   double *cs_im = malloc(len * sizeof(double));
	.loc 1 23 19 is_stmt 0 view .LVU67
	xorl	%eax, %eax	# ivtmp.33
.LVL23:
	.p2align 4,,10
	.p2align 3
.L4:
.LBB13:
.LBB12:
	.loc 1 35 7 is_stmt 1 view .LVU68
# inline_manually.c:35:       as_re[i] = bs_re[i] * cs_re[i] - bs_im[i] * cs_im[i];
	.loc 1 35 27 is_stmt 0 view .LVU69
	movupd	0(%r13,%rax), %xmm3	# MEM <vector(2) double> [(double *)bs_re_64 + ivtmp.33_105 * 1], tmp199
# inline_manually.c:35:       as_re[i] = bs_re[i] * cs_re[i] - bs_im[i] * cs_im[i];
	.loc 1 35 49 view .LVU70
	movupd	(%rbx,%rax), %xmm4	# MEM <vector(2) double> [(double *)cs_im_72 + ivtmp.33_105 * 1], tmp201
# inline_manually.c:35:       as_re[i] = bs_re[i] * cs_re[i] - bs_im[i] * cs_im[i];
	.loc 1 35 27 view .LVU71
	movupd	(%r12,%rax), %xmm0	# MEM <vector(2) double> [(double *)cs_re_66 + ivtmp.33_105 * 1], vect__27.13
# inline_manually.c:35:       as_re[i] = bs_re[i] * cs_re[i] - bs_im[i] * cs_im[i];
	.loc 1 35 49 view .LVU72
	movupd	0(%rbp,%rax), %xmm1	# MEM <vector(2) double> [(double *)bs_im_70 + ivtmp.33_105 * 1], vect__32.20
# inline_manually.c:36:       as_im[i] = bs_re[i] * cs_im[i] + bs_im[i] * cs_re[i];
	.loc 1 36 49 view .LVU73
	movupd	(%r12,%rax), %xmm6	# MEM <vector(2) double> [(double *)cs_re_66 + ivtmp.33_105 * 1], tmp205
# inline_manually.c:35:       as_re[i] = bs_re[i] * cs_re[i] - bs_im[i] * cs_im[i];
	.loc 1 35 49 view .LVU74
	mulpd	%xmm4, %xmm1	# tmp201, vect__32.20
# inline_manually.c:35:       as_re[i] = bs_re[i] * cs_re[i] - bs_im[i] * cs_im[i];
	.loc 1 35 27 view .LVU75
	mulpd	%xmm3, %xmm0	# tmp199, vect__27.13
# inline_manually.c:35:       as_re[i] = bs_re[i] * cs_re[i] - bs_im[i] * cs_im[i];
	.loc 1 35 38 view .LVU76
	subpd	%xmm1, %xmm0	# vect__32.20, vect__34.21
# inline_manually.c:36:       as_im[i] = bs_re[i] * cs_im[i] + bs_im[i] * cs_re[i];
	.loc 1 36 49 view .LVU77
	movupd	0(%rbp,%rax), %xmm1	# MEM <vector(2) double> [(double *)bs_im_70 + ivtmp.33_105 * 1], vect__36.25
	mulpd	%xmm6, %xmm1	# tmp205, vect__36.25
# inline_manually.c:35:       as_re[i] = bs_re[i] * cs_re[i] - bs_im[i] * cs_im[i];
	.loc 1 35 16 view .LVU78
	movups	%xmm0, (%rcx,%rax)	# vect__34.21, MEM <vector(2) double> [(double *)as_re_62 + ivtmp.33_105 * 1]
	.loc 1 36 7 is_stmt 1 view .LVU79
# inline_manually.c:36:       as_im[i] = bs_re[i] * cs_im[i] + bs_im[i] * cs_re[i];
	.loc 1 36 27 is_stmt 0 view .LVU80
	movapd	%xmm3, %xmm0	# tmp199, vect__35.24
	mulpd	%xmm4, %xmm0	# tmp203, vect__35.24
# inline_manually.c:36:       as_im[i] = bs_re[i] * cs_im[i] + bs_im[i] * cs_re[i];
	.loc 1 36 38 view .LVU81
	addpd	%xmm1, %xmm0	# vect__36.25, vect__38.26
# inline_manually.c:36:       as_im[i] = bs_re[i] * cs_im[i] + bs_im[i] * cs_re[i];
	.loc 1 36 16 view .LVU82
	movups	%xmm0, (%r14,%rax)	# vect__38.26, MEM <vector(2) double> [(double *)as_im_68 + ivtmp.33_105 * 1]
	.loc 1 34 31 is_stmt 1 discriminator 3 view .LVU83
	.loc 1 34 23 discriminator 1 view .LVU84
	addq	$16, %rax	#, ivtmp.33
	cmpq	$240000, %rax	#, ivtmp.33
	jne	.L4	#,
.LBE12:
	.loc 1 33 36 discriminator 2 view .LVU85
	.loc 1 33 21 discriminator 1 view .LVU86
	subl	$1, %edx	#, ivtmp_115
	jne	.L3	#,
.LBE13:
# inline_manually.c:39:   clock_gettime(CLOCK_MONOTONIC, &bench_stop_time);
	.loc 1 39 3 is_stmt 0 view .LVU87
	leaq	32(%rsp), %rsi	#, tmp160
	movl	$1, %edi	#,
	movq	%rcx, 8(%rsp)	# as_re, %sfp
	.loc 1 39 3 is_stmt 1 view .LVU88
	call	clock_gettime@PLT	#
.LVL24:
	.loc 1 40 3 view .LVU89
# inline_manually.c:40:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 40 22 is_stmt 0 view .LVU90
	movq	16(%rsp), %rsi	# bench_start_time.tv_sec,
	movq	32(%rsp), %rdi	# bench_stop_time.tv_sec,
	call	difftime@PLT	#
.LVL25:
# inline_manually.c:41:     (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
	.loc 1 41 30 view .LVU91
	movq	40(%rsp), %rsi	# bench_stop_time.tv_nsec, bench_stop_time.tv_nsec
	subq	24(%rsp), %rsi	# bench_start_time.tv_nsec, tmp163
# inline_manually.c:41:     (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
	.loc 1 41 58 view .LVU92
	movabsq	$2361183241434822607, %rax	#, tmp195
	imulq	%rsi	# tmp163
# inline_manually.c:40:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 40 22 view .LVU93
	movapd	%xmm0, %xmm1	#, tmp193
# inline_manually.c:41:     (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
	.loc 1 41 58 view .LVU94
	sarq	$63, %rsi	#, tmp169
# inline_manually.c:40:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 40 80 discriminator 1 view .LVU95
	movsd	.LC1(%rip), %xmm2	#, tmp172
# inline_manually.c:40:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 40 90 view .LVU96
	pxor	%xmm0, %xmm0	# tmp170
.LBB14:
.LBB15:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 86 10 view .LVU97
	movq	8(%rsp), %rcx	# %sfp, as_re
	movl	$2, %edi	#,
.LBE15:
.LBE14:
# inline_manually.c:40:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 40 80 discriminator 1 view .LVU98
	mulsd	%xmm2, %xmm1	# tmp172, tmp171
# inline_manually.c:41:     (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
	.loc 1 41 58 view .LVU99
	movq	%rdx, %rax	# tmp166, tmp166
	sarq	$7, %rax	#, tmp166
	subq	%rsi, %rax	# tmp169, tmp165
.LBB20:
.LBB16:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 view .LVU100
	leaq	.LC2(%rip), %rsi	#, tmp177
.LBE16:
.LBE20:
# inline_manually.c:40:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 40 90 view .LVU101
	cvtsi2sdq	%rax, %xmm0	# tmp165, tmp170
.LBB21:
.LBB17:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 view .LVU102
	movl	$2, %eax	#,
.LBE17:
.LBE21:
# inline_manually.c:40:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 40 90 view .LVU103
	addsd	%xmm1, %xmm0	# tmp171, tmp173
.LBB22:
.LBB18:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 view .LVU104
	movsd	(%r14), %xmm1	# *as_im_68,
.LBE18:
.LBE22:
# inline_manually.c:40:   bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
	.loc 1 40 19 view .LVU105
	divsd	%xmm2, %xmm0	# tmp172, tmp173
	movq	%xmm0, %r15	# tmp173, bench_diff_time
.LVL26:
	.loc 1 42 3 is_stmt 1 view .LVU106
.LBB23:
.LBI14:
	.loc 2 84 1 view .LVU107
.LBB19:
	.loc 2 86 3 view .LVU108
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU109
	movsd	(%rcx), %xmm0	# *as_re_62, *as_re_62
.LVL27:
	.loc 2 86 10 view .LVU110
	call	__printf_chk@PLT	#
.LVL28:
	.loc 2 86 10 view .LVU111
.LBE19:
.LBE23:
	.loc 1 43 3 is_stmt 1 view .LVU112
.LBB24:
.LBI24:
	.loc 2 84 1 view .LVU113
.LBB25:
	.loc 2 86 3 view .LVU114
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU115
	movq	%r15, %xmm0	# bench_diff_time,
	movl	$2, %edi	#,
	leaq	.LC3(%rip), %rsi	#, tmp178
	movl	$1, %eax	#,
	call	__printf_chk@PLT	#
.LVL29:
	.loc 2 86 10 view .LVU116
.LBE25:
.LBE24:
	.loc 1 44 3 is_stmt 1 view .LVU117
	movq	8(%rsp), %rdi	# %sfp,
	call	free@PLT	#
.LVL30:
	.loc 1 45 3 view .LVU118
	movq	%r13, %rdi	# bs_re,
	call	free@PLT	#
.LVL31:
	.loc 1 46 3 view .LVU119
	movq	%r12, %rdi	# cs_re,
	call	free@PLT	#
.LVL32:
	.loc 1 47 3 view .LVU120
	movq	%r14, %rdi	# as_im,
	call	free@PLT	#
.LVL33:
	.loc 1 48 3 view .LVU121
	movq	%rbp, %rdi	# bs_im,
	call	free@PLT	#
.LVL34:
	.loc 1 49 3 view .LVU122
	movq	%rbx, %rdi	# cs_im,
	call	free@PLT	#
.LVL35:
# inline_manually.c:50: }
	.loc 1 50 1 is_stmt 0 view .LVU123
	movq	56(%rsp), %rax	# D.4261, tmp196
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp196
	jne	.L11	#,
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 48
.LVL36:
	.loc 1 50 1 view .LVU124
	popq	%rbp	#
	.cfi_def_cfa_offset 40
.LVL37:
	.loc 1 50 1 view .LVU125
	popq	%r12	#
	.cfi_def_cfa_offset 32
.LVL38:
	.loc 1 50 1 view .LVU126
	popq	%r13	#
	.cfi_def_cfa_offset 24
.LVL39:
	.loc 1 50 1 view .LVU127
	popq	%r14	#
	.cfi_def_cfa_offset 16
.LVL40:
	.loc 1 50 1 view .LVU128
	popq	%r15	#
	.cfi_def_cfa_offset 8
.LVL41:
	.loc 1 50 1 view .LVU129
	ret	
.LVL42:
.L11:
	.cfi_restore_state
	.loc 1 50 1 view .LVU130
	call	__stack_chk_fail@PLT	#
.LVL43:
	.cfi_endproc
.LFE39:
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
	.long	0x598
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x12
	.long	.LASF38
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL14
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0x7
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
	.uleb128 0x13
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
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x7
	.long	.LASF11
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x70
	.uleb128 0x7
	.long	.LASF12
	.byte	0x4
	.byte	0xa9
	.byte	0x1d
	.long	0x69
	.uleb128 0x7
	.long	.LASF13
	.byte	0x4
	.byte	0xc5
	.byte	0x21
	.long	0x70
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x15
	.long	0x9b
	.uleb128 0x8
	.long	0xa2
	.uleb128 0x16
	.long	0xa7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x7
	.long	.LASF16
	.byte	0x5
	.byte	0x7
	.byte	0x15
	.long	0x83
	.uleb128 0x7
	.long	.LASF17
	.byte	0x6
	.byte	0xa
	.byte	0x12
	.long	0x77
	.uleb128 0x17
	.long	.LASF39
	.byte	0x10
	.byte	0x7
	.byte	0xb
	.byte	0x8
	.long	0xf6
	.uleb128 0xa
	.long	.LASF18
	.byte	0x10
	.byte	0xc
	.long	0x77
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x9
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
	.uleb128 0xb
	.byte	0
	.uleb128 0xc
	.long	.LASF24
	.value	0x2af
	.long	0x12a
	.uleb128 0x4
	.long	0x4b
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x18
	.long	.LASF40
	.byte	0xa
	.value	0x23d
	.byte	0xc
	.long	0x69
	.uleb128 0xd
	.long	.LASF23
	.byte	0xa
	.value	0x2a0
	.byte	0xe
	.long	0x4b
	.long	0x169
	.uleb128 0x4
	.long	0x31
	.byte	0
	.uleb128 0xc
	.long	.LASF25
	.value	0x23f
	.long	0x17a
	.uleb128 0x4
	.long	0x44
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x9
	.byte	0x4c
	.byte	0xf
	.long	0xc4
	.long	0x190
	.uleb128 0x4
	.long	0x190
	.byte	0
	.uleb128 0x8
	.long	0xc4
	.uleb128 0xd
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
	.uleb128 0x8
	.long	0xd0
	.uleb128 0x19
	.long	.LASF41
	.byte	0x1
	.byte	0x9
	.byte	0x5
	.long	0x69
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x56e
	.uleb128 0xe
	.long	.LASF28
	.byte	0x13
	.long	0xd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xe
	.long	.LASF29
	.byte	0x25
	.long	0xd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x5
	.long	.LASF31
	.byte	0xb
	.byte	0xa
	.long	0x2a
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.byte	0xd
	.byte	0x7
	.long	0x69
	.value	0x7530
	.uleb128 0x1b
	.long	.LASF30
	.byte	0x1
	.byte	0xe
	.byte	0x7
	.long	0x69
	.long	0x30d40
	.uleb128 0x5
	.long	.LASF32
	.byte	0x11
	.byte	0xb
	.long	0x56e
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x5
	.long	.LASF33
	.byte	0x12
	.byte	0xb
	.long	0x56e
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x5
	.long	.LASF34
	.byte	0x13
	.byte	0xb
	.long	0x56e
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x5
	.long	.LASF35
	.byte	0x15
	.byte	0xb
	.long	0x56e
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x5
	.long	.LASF36
	.byte	0x16
	.byte	0xb
	.long	0x56e
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x5
	.long	.LASF37
	.byte	0x17
	.byte	0xb
	.long	0x56e
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x1c
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x2f2
	.uleb128 0xf
	.string	"i"
	.byte	0x19
	.byte	0xc
	.long	0x69
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x6
	.quad	.LVL16
	.long	0x145
	.uleb128 0x6
	.quad	.LVL17
	.long	0x145
	.uleb128 0x6
	.quad	.LVL18
	.long	0x145
	.uleb128 0x6
	.quad	.LVL19
	.long	0x145
	.byte	0
	.uleb128 0x1d
	.long	.LLRL8
	.long	0x31d
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.byte	0x21
	.byte	0xc
	.long	0x69
	.uleb128 0x1f
	.long	.LLRL9
	.uleb128 0xf
	.string	"i"
	.byte	0x22
	.byte	0xe
	.long	0x69
	.long	.LLST10
	.long	.LVUS10
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x573
	.quad	.LBI14
	.byte	.LVU107
	.long	.LLRL11
	.byte	0x1
	.byte	0x2a
	.byte	0x3
	.long	0x364
	.uleb128 0x10
	.long	0x584
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x11
	.quad	.LVL28
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
	.uleb128 0x21
	.long	0x573
	.quad	.LBI24
	.byte	.LVU113
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.byte	0x1
	.byte	0x2b
	.byte	0x3
	.long	0x3be
	.uleb128 0x10
	.long	0x584
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x11
	.quad	.LVL29
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
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xf
	.uleb128 0x2a
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL0
	.long	0x195
	.long	0x3dc
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
	.quad	.LVL1
	.long	0x17a
	.long	0x3f4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.quad	.LVL2
	.long	0x169
	.uleb128 0x2
	.quad	.LVL3
	.long	0x152
	.long	0x41c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x3a980
	.byte	0
	.uleb128 0x2
	.quad	.LVL5
	.long	0x152
	.long	0x437
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x3a980
	.byte	0
	.uleb128 0x2
	.quad	.LVL7
	.long	0x152
	.long	0x452
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x3a980
	.byte	0
	.uleb128 0x2
	.quad	.LVL9
	.long	0x152
	.long	0x46d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x3a980
	.byte	0
	.uleb128 0x2
	.quad	.LVL11
	.long	0x152
	.long	0x488
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x3a980
	.byte	0
	.uleb128 0x2
	.quad	.LVL13
	.long	0x152
	.long	0x4a3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x3a980
	.byte	0
	.uleb128 0x2
	.quad	.LVL24
	.long	0x195
	.long	0x4c1
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
	.uleb128 0x6
	.quad	.LVL25
	.long	0x12a
	.uleb128 0x2
	.quad	.LVL30
	.long	0x119
	.long	0x4e8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL31
	.long	0x119
	.long	0x500
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL32
	.long	0x119
	.long	0x518
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL33
	.long	0x119
	.long	0x530
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
	.long	0x548
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL35
	.long	0x119
	.long	0x560
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.quad	.LVL43
	.long	0x592
	.byte	0
	.uleb128 0x8
	.long	0x2a
	.uleb128 0x22
	.long	.LASF42
	.byte	0x2
	.byte	0x54
	.byte	0x1
	.long	0x69
	.byte	0x3
	.long	0x592
	.uleb128 0x23
	.long	.LASF43
	.byte	0x2
	.byte	0x54
	.byte	0x20
	.long	0xac
	.uleb128 0xb
	.byte	0
	.uleb128 0x24
	.long	.LASF44
	.long	.LASF44
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
	.uleb128 0x6
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 .LVU106
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU129
	.uleb128 .LVU130
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL27-.LVL26
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL27-.LVL26
	.uleb128 .LVL41-.LVL26
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL42-.LVL26
	.uleb128 .LFE39-.LVL26
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS1:
	.uleb128 .LVU17
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU39
.LLST1:
	.byte	0x6
	.quad	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL5-1-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL5-1-.LVL4
	.uleb128 .LVL14-.LVL4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
.LVUS2:
	.uleb128 .LVU21
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU127
	.uleb128 .LVU130
	.uleb128 0
.LLST2:
	.byte	0x6
	.quad	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL7-1-.LVL6
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL7-1-.LVL6
	.uleb128 .LVL39-.LVL6
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL42-.LVL6
	.uleb128 .LFE39-.LVL6
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS3:
	.uleb128 .LVU25
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU126
	.uleb128 .LVU130
	.uleb128 0
.LLST3:
	.byte	0x6
	.quad	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL9-1-.LVL8
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-1-.LVL8
	.uleb128 .LVL38-.LVL8
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL42-.LVL8
	.uleb128 .LFE39-.LVL8
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS4:
	.uleb128 .LVU29
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU128
	.uleb128 .LVU130
	.uleb128 0
.LLST4:
	.byte	0x6
	.quad	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-1-.LVL10
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL11-1-.LVL10
	.uleb128 .LVL40-.LVL10
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL42-.LVL10
	.uleb128 .LFE39-.LVL10
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS5:
	.uleb128 .LVU33
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU125
	.uleb128 .LVU130
	.uleb128 0
.LLST5:
	.byte	0x6
	.quad	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL13-1-.LVL12
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL13-1-.LVL12
	.uleb128 .LVL37-.LVL12
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL42-.LVL12
	.uleb128 .LFE39-.LVL12
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS6:
	.uleb128 .LVU36
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU124
	.uleb128 .LVU130
	.uleb128 0
.LLST6:
	.byte	0x6
	.quad	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL14-.LVL14
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL36-.LVL14
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL42-.LVL14
	.uleb128 .LFE39-.LVL14
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS7:
	.uleb128 .LVU38
	.uleb128 .LVU39
	.uleb128 .LVU40
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU106
.LLST7:
	.byte	0x6
	.quad	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL14-.LVL14
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL14
	.uleb128 .LVL20-.LVL14
	.uleb128 0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.LVL14
	.uleb128 .LVL21-.LVL14
	.uleb128 0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL14
	.uleb128 .LVL26-.LVL14
	.uleb128 0x7
	.byte	0x7f
	.sleb128 -8
	.byte	0x33
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU65
	.uleb128 .LVU68
.LLST10:
	.byte	0x8
	.quad	.LVL22
	.uleb128 .LVL23-.LVL22
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU107
	.uleb128 .LVU111
.LLST12:
	.byte	0x8
	.quad	.LVL26
	.uleb128 .LVL28-.LVL26
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU113
	.uleb128 .LVU116
.LLST13:
	.byte	0x8
	.quad	.LVL28
	.uleb128 .LVL29-.LVL28
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB39
	.quad	.LFE39-.LFB39
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
.LLRL8:
	.byte	0x5
	.quad	.LBB10
	.byte	0x4
	.uleb128 .LBB10-.LBB10
	.uleb128 .LBE10-.LBB10
	.byte	0x4
	.uleb128 .LBB13-.LBB10
	.uleb128 .LBE13-.LBB10
	.byte	0
.LLRL9:
	.byte	0x5
	.quad	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB12-.LBB11
	.uleb128 .LBE12-.LBB11
	.byte	0
.LLRL11:
	.byte	0x5
	.quad	.LBB14
	.byte	0x4
	.uleb128 .LBB14-.LBB14
	.uleb128 .LBE14-.LBB14
	.byte	0x4
	.uleb128 .LBB20-.LBB14
	.uleb128 .LBE20-.LBB14
	.byte	0x4
	.uleb128 .LBB21-.LBB14
	.uleb128 .LBE21-.LBB14
	.byte	0x4
	.uleb128 .LBB22-.LBB14
	.uleb128 .LBE22-.LBB14
	.byte	0x4
	.uleb128 .LBB23-.LBB14
	.uleb128 .LBE23-.LBB14
	.byte	0
.LLRL14:
	.byte	0x7
	.quad	.LFB39
	.uleb128 .LFE39-.LFB39
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"__fmt"
.LASF33:
	.string	"bs_re"
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
.LASF39:
	.string	"timespec"
.LASF5:
	.string	"unsigned char"
.LASF34:
	.string	"cs_re"
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
.LASF44:
	.string	"__stack_chk_fail"
.LASF11:
	.string	"__time_t"
.LASF26:
	.string	"time"
.LASF2:
	.string	"double"
.LASF13:
	.string	"__syscall_slong_t"
.LASF41:
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
.LASF38:
	.string	"GNU C17 13.2.0 -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF37:
	.string	"cs_im"
.LASF27:
	.string	"clock_gettime"
.LASF24:
	.string	"free"
.LASF15:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF42:
	.string	"printf"
.LASF8:
	.string	"short int"
.LASF32:
	.string	"as_re"
.LASF9:
	.string	"long int"
.LASF22:
	.string	"difftime"
.LASF7:
	.string	"signed char"
.LASF16:
	.string	"clockid_t"
.LASF12:
	.string	"__clockid_t"
.LASF31:
	.string	"bench_diff_time"
.LASF23:
	.string	"malloc"
.LASF40:
	.string	"rand"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/j/dev/hpc/assignments/1"
.LASF0:
	.string	"inline_manually.c"
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
