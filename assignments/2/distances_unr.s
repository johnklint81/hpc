	.file	"distances_unr.c"
# GNU C17 (Ubuntu 13.2.0-23ubuntu4) version 13.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fopenmp -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.p2align 4
	.type	main._omp_fn.0, @function
main._omp_fn.0:
.LFB57:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	subq	$4096, %rsp	#,
	.cfi_def_cfa_offset 4152
	orq	$0, (%rsp)	#,
	subq	$4096, %rsp	#,
	.cfi_def_cfa_offset 8248
	orq	$0, (%rsp)	#,
	subq	$4096, %rsp	#,
	.cfi_def_cfa_offset 12344
	orq	$0, (%rsp)	#,
	subq	$1688, %rsp	#,
	.cfi_def_cfa_offset 14032
# distances_unr.c:62:     int local_distance_count[N_BINS] = {0};
	xorl	%esi, %esi	#
	movl	$13860, %edx	#,
# distances_unr.c:60:   #pragma omp parallel
	movl	16(%rdi), %r10d	# *.omp_data_i_14(D).num_points, num_points
	movl	20(%rdi), %ebp	# *.omp_data_i_14(D).remainder, remainder
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp413
	movq	%rax, 13960(%rsp)	# tmp413, D.6355
	xorl	%eax, %eax	# tmp413
# distances_unr.c:62:     int local_distance_count[N_BINS] = {0};
	leaq	96(%rsp), %rbx	#, tmp398
# distances_unr.c:60:   #pragma omp parallel
	movq	%rdi, 8(%rsp)	# .omp_data_i, %sfp
# distances_unr.c:62:     int local_distance_count[N_BINS] = {0};
	movq	%rbx, %rdi	# tmp398,
# distances_unr.c:60:   #pragma omp parallel
	movl	%r10d, (%rsp)	# num_points, %sfp
# distances_unr.c:62:     int local_distance_count[N_BINS] = {0};
	call	memset@PLT	#
	call	omp_get_num_threads@PLT	#
	movl	%eax, %r12d	# tmp406, _18
	call	omp_get_thread_num@PLT	#
	movl	(%rsp), %r10d	# %sfp, num_points
	movq	8(%rsp), %rcx	# %sfp, .omp_data_i
	movl	%eax, %esi	# tmp407, _19
	movl	%r10d, %eax	# num_points, q.8_1
	cltd
	idivl	%r12d	# _18
	cmpl	%edx, %esi	# tt.9_2, _19
	jl	.L2	#,
.L31:
	imull	%eax, %esi	# q.8_1, tmp264
	leal	(%rsi,%rdx), %r12d	#, j
	leal	(%rax,%r12), %r9d	#, _25
	cmpl	%r9d, %r12d	# _25, j
	jge	.L3	#,
# distances_unr.c:65:       for (int j = i + 1; j + UNROLL_FACTOR - 1 < num_points - remainder; j += UNROLL_FACTOR) {
	movl	%r10d, %edi	# num_points, _372
	movslq	%r12d, %rax	# j, j
	movl	%r10d, 72(%rsp)	# num_points, %sfp
	movq	%rcx, %r13	# .omp_data_i, .omp_data_i
	subl	%ebp, %edi	# remainder, _372
	leaq	3(%rax,%rax,2), %rax	#, tmp269
	movl	%r9d, 76(%rsp)	# _25, %sfp
	pxor	%xmm1, %xmm1	# tmp403
	movslq	%edi, %rsi	# _372, _368
	leaq	(%rax,%rax), %rdx	#, ivtmp.67
	movq	%rbx, 80(%rsp)	# tmp398, %sfp
	movss	.LC1(%rip), %xmm3	#, tmp401
	leaq	(%rsi,%rsi,2), %rax	#, tmp273
	movss	.LC2(%rip), %xmm2	#, tmp402
	leaq	(%rax,%rax), %r8	#, tmp274
	movl	%ebp, %eax	# remainder, remainder
	movq	%rdx, %rbp	# ivtmp.67, ivtmp.67
	addq	%rsi, %rax	# _368, tmp276
	leaq	(%rax,%rax,2), %rax	#, tmp279
	leaq	(%rax,%rax), %r15	#, tmp280
	movq	%r8, %rax	# tmp274, tmp274
	movq	%r15, %rcx	# tmp280, tmp280
	.p2align 4,,10
	.p2align 3
.L6:
	movl	%r12d, %r10d	# j, i
# distances_unr.c:65:       for (int j = i + 1; j + UNROLL_FACTOR - 1 < num_points - remainder; j += UNROLL_FACTOR) {
	addl	$1, %r12d	#, j
# distances_unr.c:65:       for (int j = i + 1; j + UNROLL_FACTOR - 1 < num_points - remainder; j += UNROLL_FACTOR) {
	leal	4(%r10), %edx	#, tmp281
# distances_unr.c:65:       for (int j = i + 1; j + UNROLL_FACTOR - 1 < num_points - remainder; j += UNROLL_FACTOR) {
	cmpl	%edi, %edx	# _372, tmp281
	jge	.L28	#,
# distances_unr.c:101:         int dx = points[i].x - points[j].x;
	movq	0(%r13), %rsi	# *.omp_data_i_14(D).points, pretmp_373
	movslq	%r10d, %rdx	# i, i
	movl	%r12d, 16(%rsp)	# j, %sfp
	leaq	(%rdx,%rdx,2), %rdx	#, tmp309
	movl	%r10d, 24(%rsp)	# i, %sfp
	leaq	(%rsi,%rdx,2), %rdx	#, _325
	movq	%rbp, 32(%rsp)	# ivtmp.67, %sfp
# distances_unr.c:68:         int dy1 = points[i].y - points[j].y;
	movswl	2(%rdx), %ebx	# MEM <short int> [(struct Point[1000000] *)_325 + 2B], _380
# distances_unr.c:67:         int dx1 = points[i].x - points[j].x;
	movswl	(%rdx), %r14d	# MEM <short int> [(struct Point[1000000] *)_325], _377
	movl	%edi, 44(%rsp)	# _372, %sfp
# distances_unr.c:69:         int dz1 = points[i].z - points[j].z;
	movswl	4(%rdx), %r15d	# MEM <short int> [(struct Point[1000000] *)_325 + 4B], _383
	leal	-4(%rdi), %edx	#, tmp311
	movq	%r13, 48(%rsp)	# .omp_data_i, %sfp
	subl	%r12d, %edx	# j, tmp312
# distances_unr.c:68:         int dy1 = points[i].y - points[j].y;
	movl	%ebx, 40(%rsp)	# _380, %sfp
	leaq	(%rsi,%rbp), %rbx	#, ivtmp.56
	leaq	24(%rsi,%rbp), %rsi	#, tmp320
	shrl	$2, %edx	#,
	movq	%rax, 56(%rsp)	# tmp274, %sfp
	leaq	(%rdx,%rdx,2), %rdx	#, tmp317
	movq	%rcx, 64(%rsp)	# tmp280, %sfp
	leaq	(%rsi,%rdx,8), %rsi	#, _322
	movq	%rsi, 8(%rsp)	# _322, %sfp
	.p2align 4,,10
	.p2align 3
.L27:
# distances_unr.c:68:         int dy1 = points[i].y - points[j].y;
	movl	40(%rsp), %edi	# %sfp, _380
# distances_unr.c:67:         int dx1 = points[i].x - points[j].x;
	movswl	(%rbx), %eax	# MEM[(short int *)_346], MEM[(short int *)_346]
# distances_unr.c:67:         int dx1 = points[i].x - points[j].x;
	movl	%r14d, %r11d	# _377, dx1
# distances_unr.c:69:         int dz1 = points[i].z - points[j].z;
	movl	%r15d, %r10d	# _383, dz1
# distances_unr.c:68:         int dy1 = points[i].y - points[j].y;
	movswl	2(%rbx), %edx	# MEM[(short int *)_346 + 2B], MEM[(short int *)_346 + 2B]
# distances_unr.c:71:         int dx2 = points[i].x - points[j + 1].x;
	movl	%r14d, %r13d	# _377, dx2
# distances_unr.c:73:         int dz2 = points[i].z - points[j + 1].z;
	movl	%r15d, %esi	# _383, dz2
# distances_unr.c:75:         int dx3 = points[i].x - points[j + 2].x;
	movl	%r14d, %r12d	# _377, dx3
# distances_unr.c:67:         int dx1 = points[i].x - points[j].x;
	subl	%eax, %r11d	# MEM[(short int *)_346], dx1
# distances_unr.c:68:         int dy1 = points[i].y - points[j].y;
	movl	%edi, %eax	# _380, dy1
# distances_unr.c:72:         int dy2 = points[i].y - points[j + 1].y;
	movl	%edi, %r9d	# _380, dy2
# distances_unr.c:76:         int dy3 = points[i].y - points[j + 2].y;
	movl	%edi, %r8d	# _380, dy3
# distances_unr.c:68:         int dy1 = points[i].y - points[j].y;
	subl	%edx, %eax	# MEM[(short int *)_346 + 2B], dy1
# distances_unr.c:69:         int dz1 = points[i].z - points[j].z;
	movswl	4(%rbx), %edx	# MEM[(short int *)_346 + 4B], MEM[(short int *)_346 + 4B]
# distances_unr.c:77:         int dz3 = points[i].z - points[j + 2].z;
	movl	%r15d, %ecx	# _383, dz3
# distances_unr.c:79:         int dx4 = points[i].x - points[j + 3].x;
	movl	%r14d, %ebp	# _377, dx4
# distances_unr.c:68:         int dy1 = points[i].y - points[j].y;
	movl	%eax, (%rsp)	# dy1, %sfp
# distances_unr.c:83:         int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
	imull	%r11d, %r11d	# dx1, tmp345
# distances_unr.c:88:         int dist_index1 = (int)(sqrtf(dist_sq1) / SCALE_FACTOR * PRECISION);
	pxor	%xmm0, %xmm0	# _125
# distances_unr.c:69:         int dz1 = points[i].z - points[j].z;
	subl	%edx, %r10d	# MEM[(short int *)_346 + 4B], dz1
# distances_unr.c:71:         int dx2 = points[i].x - points[j + 1].x;
	movswl	6(%rbx), %edx	# MEM[(short int *)_346 + 6B], MEM[(short int *)_346 + 6B]
# distances_unr.c:83:         int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
	imull	%r10d, %r10d	# dz1, tmp348
# distances_unr.c:71:         int dx2 = points[i].x - points[j + 1].x;
	subl	%edx, %r13d	# MEM[(short int *)_346 + 6B], dx2
# distances_unr.c:72:         int dy2 = points[i].y - points[j + 1].y;
	movswl	8(%rbx), %edx	# MEM[(short int *)_346 + 8B], MEM[(short int *)_346 + 8B]
# distances_unr.c:84:         int dist_sq2 = dx2 * dx2 + dy2 * dy2 + dz2 * dz2;
	imull	%r13d, %r13d	# dx2, tmp333
# distances_unr.c:72:         int dy2 = points[i].y - points[j + 1].y;
	subl	%edx, %r9d	# MEM[(short int *)_346 + 8B], dy2
# distances_unr.c:73:         int dz2 = points[i].z - points[j + 1].z;
	movswl	10(%rbx), %edx	# MEM[(short int *)_346 + 10B], MEM[(short int *)_346 + 10B]
# distances_unr.c:84:         int dist_sq2 = dx2 * dx2 + dy2 * dy2 + dz2 * dz2;
	imull	%r9d, %r9d	# dy2, tmp334
# distances_unr.c:73:         int dz2 = points[i].z - points[j + 1].z;
	subl	%edx, %esi	# MEM[(short int *)_346 + 10B], dz2
# distances_unr.c:75:         int dx3 = points[i].x - points[j + 2].x;
	movswl	12(%rbx), %edx	# MEM[(short int *)_346 + 12B], MEM[(short int *)_346 + 12B]
# distances_unr.c:84:         int dist_sq2 = dx2 * dx2 + dy2 * dy2 + dz2 * dz2;
	imull	%esi, %esi	# dz2, tmp336
# distances_unr.c:75:         int dx3 = points[i].x - points[j + 2].x;
	subl	%edx, %r12d	# MEM[(short int *)_346 + 12B], dx3
# distances_unr.c:76:         int dy3 = points[i].y - points[j + 2].y;
	movswl	14(%rbx), %edx	# MEM[(short int *)_346 + 14B], MEM[(short int *)_346 + 14B]
# distances_unr.c:84:         int dist_sq2 = dx2 * dx2 + dy2 * dy2 + dz2 * dz2;
	addl	%r13d, %r9d	# tmp333, tmp335
# distances_unr.c:85:         int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
	imull	%r12d, %r12d	# dx3, tmp337
# distances_unr.c:76:         int dy3 = points[i].y - points[j + 2].y;
	subl	%edx, %r8d	# MEM[(short int *)_346 + 14B], dy3
# distances_unr.c:77:         int dz3 = points[i].z - points[j + 2].z;
	movswl	16(%rbx), %edx	# MEM[(short int *)_346 + 16B], MEM[(short int *)_346 + 16B]
# distances_unr.c:84:         int dist_sq2 = dx2 * dx2 + dy2 * dy2 + dz2 * dz2;
	addl	%r9d, %esi	# tmp335, dist_sq2
# distances_unr.c:85:         int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
	imull	%r8d, %r8d	# dy3, tmp338
# distances_unr.c:77:         int dz3 = points[i].z - points[j + 2].z;
	subl	%edx, %ecx	# MEM[(short int *)_346 + 16B], dz3
# distances_unr.c:79:         int dx4 = points[i].x - points[j + 3].x;
	movswl	18(%rbx), %edx	# MEM[(short int *)_346 + 18B], MEM[(short int *)_346 + 18B]
# distances_unr.c:85:         int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
	imull	%ecx, %ecx	# dz3, tmp340
# distances_unr.c:79:         int dx4 = points[i].x - points[j + 3].x;
	subl	%edx, %ebp	# MEM[(short int *)_346 + 18B], dx4
# distances_unr.c:80:         int dy4 = points[i].y - points[j + 3].y;
	movswl	20(%rbx), %edx	# MEM[(short int *)_346 + 20B], MEM[(short int *)_346 + 20B]
# distances_unr.c:85:         int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
	addl	%r12d, %r8d	# tmp337, tmp339
# distances_unr.c:86:         int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;
	imull	%ebp, %ebp	# dx4, tmp341
# distances_unr.c:80:         int dy4 = points[i].y - points[j + 3].y;
	subl	%edx, %edi	# MEM[(short int *)_346 + 20B], dy4
# distances_unr.c:81:         int dz4 = points[i].z - points[j + 3].z;
	movswl	22(%rbx), %edx	# MEM[(short int *)_346 + 22B], MEM[(short int *)_346 + 22B]
# distances_unr.c:85:         int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
	addl	%r8d, %ecx	# tmp339, dist_sq3
# distances_unr.c:86:         int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;
	imull	%edi, %edi	# dy4, tmp342
# distances_unr.c:81:         int dz4 = points[i].z - points[j + 3].z;
	movl	%edx, %eax	# MEM[(short int *)_346 + 22B], MEM[(short int *)_346 + 22B]
# distances_unr.c:81:         int dz4 = points[i].z - points[j + 3].z;
	movl	%r15d, %edx	# _383, dz4
	subl	%eax, %edx	# MEM[(short int *)_346 + 22B], dz4
# distances_unr.c:83:         int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
	movl	(%rsp), %eax	# %sfp, dy1
# distances_unr.c:86:         int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;
	imull	%edx, %edx	# dz4, tmp344
# distances_unr.c:86:         int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;
	addl	%ebp, %edi	# tmp341, tmp343
# distances_unr.c:83:         int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
	imull	%eax, %eax	# dy1, dy1
# distances_unr.c:86:         int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;
	addl	%edi, %edx	# tmp343, dist_sq4
# distances_unr.c:83:         int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
	addl	%r11d, %eax	# tmp345, tmp347
# distances_unr.c:83:         int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
	addl	%r10d, %eax	# tmp348, dist_sq1
# distances_unr.c:88:         int dist_index1 = (int)(sqrtf(dist_sq1) / SCALE_FACTOR * PRECISION);
	cvtsi2ssl	%eax, %xmm0	# dist_sq1, _125
	ucomiss	%xmm0, %xmm1	# _125, tmp403
	ja	.L43	#,
	sqrtss	%xmm0, %xmm0	# _125, _127
.L17:
# distances_unr.c:88:         int dist_index1 = (int)(sqrtf(dist_sq1) / SCALE_FACTOR * PRECISION);
	divss	%xmm3, %xmm0	# tmp401, tmp351
# distances_unr.c:88:         int dist_index1 = (int)(sqrtf(dist_sq1) / SCALE_FACTOR * PRECISION);
	mulss	%xmm2, %xmm0	# tmp402, tmp353
# distances_unr.c:88:         int dist_index1 = (int)(sqrtf(dist_sq1) / SCALE_FACTOR * PRECISION);
	cvttss2sil	%xmm0, %ebp	# tmp353, dist_index1
# distances_unr.c:89:         int dist_index2 = (int)(sqrtf(dist_sq2) / SCALE_FACTOR * PRECISION);  
	pxor	%xmm0, %xmm0	# _131
	cvtsi2ssl	%esi, %xmm0	# dist_sq2, _131
	ucomiss	%xmm0, %xmm1	# _131, tmp403
	ja	.L44	#,
	sqrtss	%xmm0, %xmm0	# _131, _133
.L20:
# distances_unr.c:89:         int dist_index2 = (int)(sqrtf(dist_sq2) / SCALE_FACTOR * PRECISION);  
	divss	%xmm3, %xmm0	# tmp401, tmp356
# distances_unr.c:89:         int dist_index2 = (int)(sqrtf(dist_sq2) / SCALE_FACTOR * PRECISION);  
	mulss	%xmm2, %xmm0	# tmp402, tmp358
# distances_unr.c:89:         int dist_index2 = (int)(sqrtf(dist_sq2) / SCALE_FACTOR * PRECISION);  
	cvttss2sil	%xmm0, %r12d	# tmp358, dist_index2
# distances_unr.c:90:         int dist_index3 = (int)(sqrtf(dist_sq3) / SCALE_FACTOR * PRECISION);  
	pxor	%xmm0, %xmm0	# _137
	cvtsi2ssl	%ecx, %xmm0	# dist_sq3, _137
	ucomiss	%xmm0, %xmm1	# _137, tmp403
	ja	.L45	#,
	sqrtss	%xmm0, %xmm0	# _137, _139
.L23:
# distances_unr.c:90:         int dist_index3 = (int)(sqrtf(dist_sq3) / SCALE_FACTOR * PRECISION);  
	divss	%xmm3, %xmm0	# tmp401, tmp361
# distances_unr.c:90:         int dist_index3 = (int)(sqrtf(dist_sq3) / SCALE_FACTOR * PRECISION);  
	mulss	%xmm2, %xmm0	# tmp402, tmp363
# distances_unr.c:90:         int dist_index3 = (int)(sqrtf(dist_sq3) / SCALE_FACTOR * PRECISION);  
	cvttss2sil	%xmm0, %r13d	# tmp363, dist_index3
# distances_unr.c:91:         int dist_index4 = (int)(sqrtf(dist_sq4) / SCALE_FACTOR * PRECISION);  
	pxor	%xmm0, %xmm0	# _143
	cvtsi2ssl	%edx, %xmm0	# dist_sq4, _143
	ucomiss	%xmm0, %xmm1	# _143, tmp403
	ja	.L46	#,
	sqrtss	%xmm0, %xmm0	# _143, _145
.L26:
# distances_unr.c:91:         int dist_index4 = (int)(sqrtf(dist_sq4) / SCALE_FACTOR * PRECISION);  
	divss	%xmm3, %xmm0	# tmp401, tmp366
# distances_unr.c:93:         local_distance_count[dist_index1]++;
	movslq	%ebp, %rbp	# dist_index1, dist_index1
# distances_unr.c:94:         local_distance_count[dist_index2]++;
	movslq	%r12d, %r12	# dist_index2, dist_index2
# distances_unr.c:95:         local_distance_count[dist_index3]++;
	movslq	%r13d, %r13	# dist_index3, dist_index3
# distances_unr.c:93:         local_distance_count[dist_index1]++;
	addl	$1, 96(%rsp,%rbp,4)	#, local_distance_count[dist_index1_130]
# distances_unr.c:65:       for (int j = i + 1; j + UNROLL_FACTOR - 1 < num_points - remainder; j += UNROLL_FACTOR) {
	addq	$24, %rbx	#, ivtmp.56
# distances_unr.c:94:         local_distance_count[dist_index2]++;
	addl	$1, 96(%rsp,%r12,4)	#, local_distance_count[dist_index2_136]
# distances_unr.c:95:         local_distance_count[dist_index3]++;
	addl	$1, 96(%rsp,%r13,4)	#, local_distance_count[dist_index3_142]
# distances_unr.c:91:         int dist_index4 = (int)(sqrtf(dist_sq4) / SCALE_FACTOR * PRECISION);  
	mulss	%xmm2, %xmm0	# tmp402, tmp368
# distances_unr.c:91:         int dist_index4 = (int)(sqrtf(dist_sq4) / SCALE_FACTOR * PRECISION);  
	cvttss2sil	%xmm0, %eax	# tmp368, dist_index4
# distances_unr.c:96:         local_distance_count[dist_index4]++;
	cltq
	addl	$1, 96(%rsp,%rax,4)	#, local_distance_count[dist_index4_148]
# distances_unr.c:65:       for (int j = i + 1; j + UNROLL_FACTOR - 1 < num_points - remainder; j += UNROLL_FACTOR) {
	cmpq	%rbx, 8(%rsp)	# ivtmp.56, %sfp
	jne	.L27	#,
	movl	16(%rsp), %r12d	# %sfp, j
	movl	24(%rsp), %r10d	# %sfp, i
	movq	32(%rsp), %rbp	# %sfp, ivtmp.67
	movl	44(%rsp), %edi	# %sfp, _372
	movq	48(%rsp), %r13	# %sfp, .omp_data_i
	movq	56(%rsp), %rax	# %sfp, tmp274
	movq	64(%rsp), %rcx	# %sfp, tmp280
.L28:
# distances_unr.c:100:       for (int j = num_points - remainder; j < num_points; j++) {
	cmpl	%edi, 72(%rsp)	# _372, %sfp
	jle	.L13	#,
# distances_unr.c:101:         int dx = points[i].x - points[j].x;
	movq	0(%r13), %r14	# *.omp_data_i_14(D).points, pretmp_384
	movslq	%r10d, %rdx	# i, i
	movss	.LC1(%rip), %xmm5	#, tmp399
	leaq	(%rdx,%rdx,2), %rdx	#, tmp285
	movss	.LC2(%rip), %xmm4	#, tmp400
	leaq	(%r14,%rdx,2), %rdx	#, _59
	leaq	(%r14,%rax), %rbx	#, ivtmp.46
	addq	%rcx, %r14	# tmp280, _354
	movswl	(%rdx), %r11d	# MEM <short int> [(struct Point[1000000] *)_59], _388
# distances_unr.c:102:         int dy = points[i].y - points[j].y;
	movswl	2(%rdx), %r10d	# MEM <short int> [(struct Point[1000000] *)_59 + 2B], _391
# distances_unr.c:103:         int dz = points[i].z - points[j].z;
	movswl	4(%rdx), %r15d	# MEM <short int> [(struct Point[1000000] *)_59 + 4B], _394
	.p2align 4,,10
	.p2align 3
.L12:
# distances_unr.c:101:         int dx = points[i].x - points[j].x;
	movswl	(%rbx), %edx	# MEM[(short int *)_365], MEM[(short int *)_365]
# distances_unr.c:102:         int dy = points[i].y - points[j].y;
	movswl	2(%rbx), %esi	# MEM[(short int *)_365 + 2B], MEM[(short int *)_365 + 2B]
# distances_unr.c:101:         int dx = points[i].x - points[j].x;
	movl	%r11d, %r8d	# _388, dx
# distances_unr.c:105:         int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
	pxor	%xmm0, %xmm0	# _50
# distances_unr.c:103:         int dz = points[i].z - points[j].z;
	movswl	4(%rbx), %r9d	# MEM[(short int *)_365 + 4B], MEM[(short int *)_365 + 4B]
# distances_unr.c:101:         int dx = points[i].x - points[j].x;
	subl	%edx, %r8d	# MEM[(short int *)_365], dx
# distances_unr.c:102:         int dy = points[i].y - points[j].y;
	movl	%r10d, %edx	# _391, dy
	subl	%esi, %edx	# MEM[(short int *)_365 + 2B], dy
# distances_unr.c:104:         int dist_sq = dx * dx + dy * dy + dz * dz;
	imull	%r8d, %r8d	# dx, tmp290
# distances_unr.c:103:         int dz = points[i].z - points[j].z;
	movl	%r15d, %esi	# _394, dz
# distances_unr.c:104:         int dist_sq = dx * dx + dy * dy + dz * dz;
	imull	%edx, %edx	# dy, tmp291
# distances_unr.c:103:         int dz = points[i].z - points[j].z;
	subl	%r9d, %esi	# MEM[(short int *)_365 + 4B], dz
# distances_unr.c:104:         int dist_sq = dx * dx + dy * dy + dz * dz;
	imull	%esi, %esi	# dz, tmp293
# distances_unr.c:104:         int dist_sq = dx * dx + dy * dy + dz * dz;
	addl	%r8d, %edx	# tmp290, tmp292
# distances_unr.c:104:         int dist_sq = dx * dx + dy * dy + dz * dz;
	addl	%esi, %edx	# tmp293, dist_sq
# distances_unr.c:105:         int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
	cvtsi2ssl	%edx, %xmm0	# dist_sq, _50
	ucomiss	%xmm0, %xmm1	# _50, tmp403
	ja	.L42	#,
	sqrtss	%xmm0, %xmm0	# _50, _52
.L10:
# distances_unr.c:105:         int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
	divss	%xmm5, %xmm0	# tmp399, tmp296
# distances_unr.c:105:         int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
	mulss	%xmm4, %xmm0	# tmp400, tmp298
# distances_unr.c:105:         int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
	cvttss2sil	%xmm0, %edx	# tmp298, dist_index
# distances_unr.c:106:         if (dist_index < N_BINS) {
	cmpl	$3464, %edx	#, dist_index
	jg	.L14	#,
# distances_unr.c:107:           local_distance_count[dist_index]++;
	movslq	%edx, %rdx	# dist_index, dist_index
	addl	$1, 96(%rsp,%rdx,4)	#, local_distance_count[dist_index_55]
.L14:
# distances_unr.c:100:       for (int j = num_points - remainder; j < num_points; j++) {
	addq	$6, %rbx	#, ivtmp.46
	cmpq	%rbx, %r14	# ivtmp.46, _354
	jne	.L12	#,
.L13:
	addq	$6, %rbp	#, ivtmp.67
	cmpl	%r12d, 76(%rsp)	# j, %sfp
	jne	.L6	#,
	movq	80(%rsp), %rbx	# %sfp, tmp398
	movq	%r13, %rcx	# .omp_data_i, .omp_data_i
.L3:
	movq	%rcx, (%rsp)	# .omp_data_i, %sfp
	call	GOMP_barrier@PLT	#
# distances_unr.c:112:     #pragma omp critical
	call	GOMP_critical_start@PLT	#
# distances_unr.c:115:         global_distance_count[i] += local_distance_count[i];
	movq	(%rsp), %rcx	# %sfp, .omp_data_i
	xorl	%eax, %eax	# ivtmp.40
	movq	8(%rcx), %rdx	# *.omp_data_i_14(D).global_distance_count, _166
	.p2align 4,,10
	.p2align 3
.L7:
# distances_unr.c:115:         global_distance_count[i] += local_distance_count[i];
	movl	(%rbx,%rax), %ecx	# MEM[(int *)&local_distance_count + ivtmp.40_204 * 1], MEM[(int *)&local_distance_count + ivtmp.40_204 * 1]
	addl	%ecx, (%rdx,%rax)	# MEM[(int *)&local_distance_count + ivtmp.40_204 * 1], MEM[(int *)_166 + ivtmp.40_204 * 1]
# distances_unr.c:114:       for (int i = 0; i < N_BINS; i++) {
	addq	$4, %rax	#, ivtmp.40
	cmpq	$13860, %rax	#, ivtmp.40
	jne	.L7	#,
# distances_unr.c:112:     #pragma omp critical
	movq	13960(%rsp), %rax	# D.6355, tmp414
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp414
	jne	.L50	#,
# distances_unr.c:60:   #pragma omp parallel
	addq	$13976, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# distances_unr.c:112:     #pragma omp critical
	jmp	GOMP_critical_end@PLT	#
.L2:
	.cfi_restore_state
	addl	$1, %eax	#, q.8_1
# distances_unr.c:62:     int local_distance_count[N_BINS] = {0};
	xorl	%edx, %edx	# tt.9_2
	jmp	.L31	#
.L42:
	movq	%rcx, 24(%rsp)	# tmp280, %sfp
	movq	%rax, 16(%rsp)	# tmp274, %sfp
	movl	%r10d, 40(%rsp)	# _391, %sfp
	movl	%r11d, 8(%rsp)	# _388, %sfp
	movl	%edi, (%rsp)	# _372, %sfp
# distances_unr.c:105:         int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
	call	sqrtf@PLT	#
	movss	.LC2(%rip), %xmm2	#, tmp402
	movq	24(%rsp), %rcx	# %sfp, tmp280
	pxor	%xmm1, %xmm1	# tmp403
	movss	.LC1(%rip), %xmm3	#, tmp401
	movq	16(%rsp), %rax	# %sfp, tmp274
	movl	40(%rsp), %r10d	# %sfp, _391
	movl	8(%rsp), %r11d	# %sfp, _388
	movaps	%xmm2, %xmm4	# tmp402, tmp400
	movl	(%rsp), %edi	# %sfp, _372
	movaps	%xmm3, %xmm5	# tmp401, tmp399
	jmp	.L10	#
.L46:
# distances_unr.c:91:         int dist_index4 = (int)(sqrtf(dist_sq4) / SCALE_FACTOR * PRECISION);  
	call	sqrtf@PLT	#
	movss	.LC2(%rip), %xmm2	#, tmp402
	pxor	%xmm1, %xmm1	# tmp403
	movss	.LC1(%rip), %xmm3	#, tmp401
	jmp	.L26	#
.L45:
	movl	%edx, (%rsp)	# dist_sq4, %sfp
# distances_unr.c:90:         int dist_index3 = (int)(sqrtf(dist_sq3) / SCALE_FACTOR * PRECISION);  
	call	sqrtf@PLT	#
	movss	.LC2(%rip), %xmm2	#, tmp402
	movl	(%rsp), %edx	# %sfp, dist_sq4
	pxor	%xmm1, %xmm1	# tmp403
	movss	.LC1(%rip), %xmm3	#, tmp401
	jmp	.L23	#
.L44:
	movl	%edx, 88(%rsp)	# dist_sq4, %sfp
	movl	%ecx, (%rsp)	# dist_sq3, %sfp
# distances_unr.c:89:         int dist_index2 = (int)(sqrtf(dist_sq2) / SCALE_FACTOR * PRECISION);  
	call	sqrtf@PLT	#
	movl	88(%rsp), %edx	# %sfp, dist_sq4
	movl	(%rsp), %ecx	# %sfp, dist_sq3
	pxor	%xmm1, %xmm1	# tmp403
	movss	.LC2(%rip), %xmm2	#, tmp402
	movss	.LC1(%rip), %xmm3	#, tmp401
	jmp	.L20	#
.L43:
	movl	%edx, 92(%rsp)	# dist_sq4, %sfp
	movl	%ecx, 88(%rsp)	# dist_sq3, %sfp
	movl	%esi, (%rsp)	# dist_sq2, %sfp
# distances_unr.c:88:         int dist_index1 = (int)(sqrtf(dist_sq1) / SCALE_FACTOR * PRECISION);
	call	sqrtf@PLT	#
	movl	92(%rsp), %edx	# %sfp, dist_sq4
	movl	(%rsp), %esi	# %sfp, dist_sq2
	pxor	%xmm1, %xmm1	# tmp403
	movss	.LC2(%rip), %xmm2	#, tmp402
	movss	.LC1(%rip), %xmm3	#, tmp401
	movl	88(%rsp), %ecx	# %sfp, dist_sq3
	jmp	.L17	#
.L50:
# distances_unr.c:112:     #pragma omp critical
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE57:
	.size	main._omp_fn.0, .-main._omp_fn.0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"r"
.LC4:
	.string	"%f %f %f"
	.text
	.p2align 4
	.globl	read_data
	.type	read_data, @function
read_data:
.LFB53:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12	# tmp125, points
# distances_unr.c:21:   FILE *file = fopen(filename, "r");
	leaq	.LC3(%rip), %rsi	#, tmp99
# distances_unr.c:20: int read_data(const char *filename, Point *points) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# distances_unr.c:23:   int count = 0;
	xorl	%ebx, %ebx	# <retval>
# distances_unr.c:20: int read_data(const char *filename, Point *points) {
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# distances_unr.c:20: int read_data(const char *filename, Point *points) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	movq	%rax, 24(%rsp)	# tmp128, D.6375
	xorl	%eax, %eax	# tmp128
	leaq	20(%rsp), %r15	#, tmp120
	leaq	16(%rsp), %r14	#, tmp119
# distances_unr.c:21:   FILE *file = fopen(filename, "r");
	call	fopen@PLT	#
	leaq	12(%rsp), %r13	#, tmp122
	movq	%rax, %rbp	# tmp126, file
# distances_unr.c:24:   while (fscanf(file, "%f %f %f", &x, &y, &z) == 3) {
	jmp	.L52	#
	.p2align 4,,10
	.p2align 3
.L53:
# distances_unr.c:26:     points[count].x = (short int)(x * SCALE_FACTOR);
	movss	12(%rsp), %xmm1	# x, tmp101
# distances_unr.c:29:     count++;
	addl	$1, %ebx	#, <retval>
	addq	$6, %r12	#, ivtmp.82
# distances_unr.c:26:     points[count].x = (short int)(x * SCALE_FACTOR);
	mulss	%xmm0, %xmm1	# tmp123, tmp101
# distances_unr.c:26:     points[count].x = (short int)(x * SCALE_FACTOR);
	cvttss2sil	%xmm1, %eax	# tmp101, tmp104
# distances_unr.c:27:     points[count].y = (short int)(y * SCALE_FACTOR);
	movss	16(%rsp), %xmm1	# y, tmp105
	mulss	%xmm0, %xmm1	# tmp123, tmp105
# distances_unr.c:26:     points[count].x = (short int)(x * SCALE_FACTOR);
	movw	%ax, -6(%r12)	# tmp104, MEM[(short int *)_35]
# distances_unr.c:27:     points[count].y = (short int)(y * SCALE_FACTOR);
	cvttss2sil	%xmm1, %eax	# tmp105, tmp108
# distances_unr.c:28:     points[count].z = (short int)(z * SCALE_FACTOR);
	movss	20(%rsp), %xmm1	# z, tmp109
	mulss	%xmm0, %xmm1	# tmp123, tmp109
# distances_unr.c:27:     points[count].y = (short int)(y * SCALE_FACTOR);
	movw	%ax, -4(%r12)	# tmp108, MEM[(short int *)_35 + 2B]
# distances_unr.c:28:     points[count].z = (short int)(z * SCALE_FACTOR);
	cvttss2sil	%xmm1, %eax	# tmp109, tmp112
	movw	%ax, -2(%r12)	# tmp112, MEM[(short int *)_35 + 4B]
.L52:
# distances_unr.c:24:   while (fscanf(file, "%f %f %f", &x, &y, &z) == 3) {
	xorl	%eax, %eax	#
	movq	%r15, %r8	# tmp120,
	movq	%r14, %rcx	# tmp119,
	movq	%r13, %rdx	# tmp122,
	leaq	.LC4(%rip), %rsi	#,
	movq	%rbp, %rdi	# file,
	call	__isoc99_fscanf@PLT	#
# distances_unr.c:24:   while (fscanf(file, "%f %f %f", &x, &y, &z) == 3) {
	movss	.LC1(%rip), %xmm0	#, tmp123
	cmpl	$3, %eax	#, tmp127
	je	.L53	#,
# distances_unr.c:31:   fclose(file);
	movq	%rbp, %rdi	# file,
	call	fclose@PLT	#
# distances_unr.c:33: }
	movq	24(%rsp), %rax	# D.6375, tmp129
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp129
	jne	.L56	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L56:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE53:
	.size	read_data, .-read_data
	.p2align 4
	.globl	get_lines
	.type	get_lines, @function
get_lines:
.LFB54:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# distances_unr.c:37:   fseek(file, 0, SEEK_END);
	movl	$2, %edx	#,
# distances_unr.c:35: int get_lines(FILE *file) {
	movq	%rdi, %rbx	# tmp94, file
# distances_unr.c:37:   fseek(file, 0, SEEK_END);
	xorl	%esi, %esi	#
	call	fseek@PLT	#
# distances_unr.c:38:   int size = ftell(file);
	movq	%rbx, %rdi	# file,
	call	ftell@PLT	#
# distances_unr.c:41: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# distances_unr.c:38:   int size = ftell(file);
	movq	%rax, %rdx	# tmp95, _1
# distances_unr.c:39:   int n_lines = size / chars_per_line;
	cltq
	imulq	$-1307163959, %rax, %rax	#, _1, tmp89
	shrq	$32, %rax	#, tmp90
	addl	%edx, %eax	# _1, tmp91
	sarl	$31, %edx	#, tmp93
	sarl	$4, %eax	#, tmp92
	subl	%edx, %eax	# tmp93, n_lines
# distances_unr.c:41: }
	ret	
	.cfi_endproc
.LFE54:
	.size	get_lines, .-get_lines
	.section	.rodata.str1.1
.LC5:
	.string	"%05.2f %d\n"
	.text
	.p2align 4
	.globl	print_result
	.type	print_result, @function
print_result:
.LFB55:
	.cfi_startproc
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12	# tmp97, distance_count
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC5(%rip), %rbp	#, tmp96
# distances_unr.c:43: void print_result(int *distance_count) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# distances_unr.c:43: void print_result(int *distance_count) {
	xorl	%ebx, %ebx	# ivtmp.91
	.p2align 4,,10
	.p2align 3
.L61:
# distances_unr.c:45:     if (distance_count[i] > 0) {
	movl	(%r12,%rbx,4), %edx	# MEM[(int *)distance_count_14(D) + ivtmp.91_12 * 4], _4
# distances_unr.c:45:     if (distance_count[i] > 0) {
	testl	%edx, %edx	# _4
	jle	.L60	#,
# distances_unr.c:46:         printf("%05.2f %d\n", i / (float)PRECISION, distance_count[i]);
	movswl	%bx, %eax	# ivtmp.91, ivtmp.91
	pxor	%xmm0, %xmm0	# tmp89
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	%rbp, %rsi	# tmp96,
	movl	$2, %edi	#,
# distances_unr.c:46:         printf("%05.2f %d\n", i / (float)PRECISION, distance_count[i]);
	cvtsi2ssl	%eax, %xmm0	# ivtmp.91, tmp89
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# distances_unr.c:46:         printf("%05.2f %d\n", i / (float)PRECISION, distance_count[i]);
	divss	.LC2(%rip), %xmm0	#, tmp91
# distances_unr.c:46:         printf("%05.2f %d\n", i / (float)PRECISION, distance_count[i]);
	cvtss2sd	%xmm0, %xmm0	# tmp91, tmp93
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
.L60:
# distances_unr.c:44:   for (short int i = 0; i < N_BINS; i++) {
	addq	$1, %rbx	#, ivtmp.91
	cmpq	$3465, %rbx	#, ivtmp.91
	jne	.L61	#,
# distances_unr.c:49: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE55:
	.size	print_result, .-print_result
	.section	.rodata.str1.1
.LC6:
	.string	"cells"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB56:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	leaq	-6012928(%rsp), %r11	#,
	.cfi_def_cfa 11, 6012952
.LPSRL0:
	subq	$4096, %rsp	#,
	orq	$0, (%rsp)	#,
	cmpq	%r11, %rsp	#,
	jne	.LPSRL0
	.cfi_def_cfa_register 7
	subq	$1016, %rsp	#,
	.cfi_def_cfa_offset 6013968
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	$10, %edx	#,
# distances_unr.c:53:   num_threads = atoi(argv[1] + 2);
	movq	8(%rsi), %rdi	# MEM[(char * *)argv_3(D) + 8B], MEM[(char * *)argv_3(D) + 8B]
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	xorl	%esi, %esi	#
# distances_unr.c:53:   num_threads = atoi(argv[1] + 2);
	addq	$2, %rdi	#, tmp98
# distances_unr.c:51: int main(int argc, char *argv[]) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp120
	movq	%rax, 6013928(%rsp)	# tmp120, D.6399
	xorl	%eax, %eax	# tmp120
	leaq	48(%rsp), %rbx	#, tmp97
	leaq	13920(%rsp), %rbp	#, tmp96
	movq	%rbx, %xmm1	# tmp97, tmp97
	movq	%rbp, %xmm0	# tmp96, tmp95
	punpcklqdq	%xmm1, %xmm0	# tmp97, tmp95
	movaps	%xmm0, (%rsp)	# tmp95, %sfp
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	call	strtol@PLT	#
# distances_unr.c:54:   omp_set_num_threads(num_threads);
	movl	%eax, %edi	# tmp118, _19
	call	omp_set_num_threads@PLT	#
# distances_unr.c:56:   int global_distance_count[N_BINS] = {0};
	movl	$13860, %edx	#,
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# tmp97,
	call	memset@PLT	#
# distances_unr.c:57:   int num_points = read_data("cells", points);
	movq	%rbp, %rsi	# tmp96,
	leaq	.LC6(%rip), %rdi	#, tmp106
	call	read_data	#
# distances_unr.c:60:   #pragma omp parallel
	movdqa	(%rsp), %xmm0	# %sfp, tmp95
	leaq	16(%rsp), %rsi	#, tmp112
	leaq	main._omp_fn.0(%rip), %rdi	#, tmp113
# distances_unr.c:58:   int remainder = num_points % UNROLL_FACTOR;
	movl	%eax, %ecx	# num_points, tmp107
# distances_unr.c:60:   #pragma omp parallel
	movl	%eax, 32(%rsp)	# num_points, .omp_data_o.7.num_points
# distances_unr.c:58:   int remainder = num_points % UNROLL_FACTOR;
	sarl	$31, %ecx	#, tmp107
# distances_unr.c:60:   #pragma omp parallel
	movaps	%xmm0, 16(%rsp)	# tmp95, MEM <vector(2) long unsigned int> [(void *)&.omp_data_o.7]
# distances_unr.c:58:   int remainder = num_points % UNROLL_FACTOR;
	shrl	$30, %ecx	#, tmp108
	leal	(%rax,%rcx), %edx	#, tmp109
	andl	$3, %edx	#, tmp110
	subl	%ecx, %edx	# tmp108, remainder
	xorl	%ecx, %ecx	#
# distances_unr.c:60:   #pragma omp parallel
	movl	%edx, 36(%rsp)	# remainder, .omp_data_o.7.remainder
	xorl	%edx, %edx	#
	call	GOMP_parallel@PLT	#
# distances_unr.c:120:   print_result(global_distance_count);
	movq	%rbx, %rdi	# tmp97,
	call	print_result	#
# distances_unr.c:122: }
	movq	6013928(%rsp), %rax	# D.6399, tmp121
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	jne	.L67	#,
	addq	$6013944, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L67:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE56:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1148846080
	.align 4
.LC2:
	.long	1120403456
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
