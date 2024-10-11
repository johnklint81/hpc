	.file	"distances_unr8.c"
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
	subq	$1736, %rsp	#,
	.cfi_def_cfa_offset 14080
# distances_unr8.c:62:     int local_distance_count[N_BINS] = {0};
	movl	$13860, %edx	#,
	xorl	%esi, %esi	#
# distances_unr8.c:60:   #pragma omp parallel
	movl	16(%rdi), %r14d	# *.omp_data_i_14(D).num_points, num_points
	movl	20(%rdi), %ebp	# *.omp_data_i_14(D).remainder, remainder
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp573
	movq	%rax, 14008(%rsp)	# tmp573, D.6587
	xorl	%eax, %eax	# tmp573
# distances_unr8.c:62:     int local_distance_count[N_BINS] = {0};
	leaq	144(%rsp), %rbx	#, tmp556
# distances_unr8.c:60:   #pragma omp parallel
	movq	%rdi, 8(%rsp)	# .omp_data_i, %sfp
# distances_unr8.c:62:     int local_distance_count[N_BINS] = {0};
	movq	%rbx, %rdi	# tmp556,
# distances_unr8.c:60:   #pragma omp parallel
	movl	%r14d, 132(%rsp)	# num_points, %sfp
# distances_unr8.c:62:     int local_distance_count[N_BINS] = {0};
	call	memset@PLT	#
	call	omp_get_num_threads@PLT	#
	movl	%eax, %r12d	# tmp562, _18
	call	omp_get_thread_num@PLT	#
	movq	8(%rsp), %r9	# %sfp, .omp_data_i
	movl	%eax, %ecx	# tmp563, _19
	movl	%r14d, %eax	# num_points, q.8_1
	cltd
	idivl	%r12d	# _18
	cmpl	%edx, %ecx	# tt.9_2, _19
	jl	.L2	#,
.L43:
	imull	%eax, %ecx	# q.8_1, tmp348
	leal	(%rcx,%rdx), %r15d	#, j
	leal	(%rax,%r15), %r8d	#, _25
	cmpl	%r8d, %r15d	# _25, j
	jge	.L3	#,
# distances_unr8.c:65:       for (int j = i + 1; j + UNROLL_FACTOR - 1 < num_points - remainder;
	movl	132(%rsp), %ecx	# %sfp, _612
	movslq	%r15d, %rax	# j, j
	movss	.LC1(%rip), %xmm3	#, tmp557
	movq	%rbx, 136(%rsp)	# tmp556, %sfp
	leaq	3(%rax,%rax,2), %rax	#, tmp353
	movss	.LC2(%rip), %xmm2	#, tmp558
	pxor	%xmm1, %xmm1	# tmp559
	movq	%r9, %rbx	# .omp_data_i, .omp_data_i
	subl	%ebp, %ecx	# remainder, _612
	leaq	(%rax,%rax), %rdx	#, ivtmp.75
	movslq	%ecx, %rsi	# _612, _11
	movl	%ecx, %r12d	# _612, _612
	movq	%rdx, %r14	# ivtmp.75, ivtmp.75
	movl	%r15d, %ecx	# j, j
	leaq	(%rsi,%rsi,2), %rax	#, tmp357
	leaq	(%rax,%rax), %rdi	#, tmp358
	movl	%ebp, %eax	# remainder, remainder
	addq	%rsi, %rax	# _11, tmp360
	movl	%r8d, %esi	# _25, _25
	leaq	(%rax,%rax,2), %rax	#, tmp363
	leaq	(%rax,%rax), %r10	#, tmp364
	movq	%r10, %r15	# tmp364, tmp364
	.p2align 4,,10
	.p2align 3
.L6:
	movl	%ecx, %ebp	# j, i
# distances_unr8.c:65:       for (int j = i + 1; j + UNROLL_FACTOR - 1 < num_points - remainder;
	addl	$1, %ecx	#, j
# distances_unr8.c:65:       for (int j = i + 1; j + UNROLL_FACTOR - 1 < num_points - remainder;
	leal	8(%rbp), %eax	#, tmp365
# distances_unr8.c:65:       for (int j = i + 1; j + UNROLL_FACTOR - 1 < num_points - remainder;
	cmpl	%r12d, %eax	# _612, tmp365
	jge	.L40	#,
# distances_unr8.c:133:         int dx = points[i].x - points[j].x;
	movq	(%rbx), %rdx	# *.omp_data_i_14(D).points, pretmp_613
	movslq	%ebp, %rax	# i, i
	movl	%ecx, 84(%rsp)	# j, %sfp
	leaq	(%rax,%rax,2), %rax	#, tmp393
	movl	%esi, 88(%rsp)	# _25, %sfp
	leaq	(%rdx,%rax,2), %rax	#, _557
	leaq	(%rdx,%r14), %r8	#, ivtmp.64
	movl	%ebp, 92(%rsp)	# i, %sfp
# distances_unr8.c:68:         int dx1 = points[i].x - points[j].x;
	movswl	(%rax), %r11d	# MEM <short int> [(struct Point[1000000] *)_557], _617
# distances_unr8.c:70:         int dz1 = points[i].z - points[j].z;
	movswl	4(%rax), %r13d	# MEM <short int> [(struct Point[1000000] *)_557 + 4B], _623
	leaq	48(%rdx,%r14), %rdx	#, tmp404
	movq	%r14, 96(%rsp)	# ivtmp.75, %sfp
	movl	%r12d, 128(%rsp)	# _612, %sfp
# distances_unr8.c:68:         int dx1 = points[i].x - points[j].x;
	movl	%r11d, 76(%rsp)	# _617, %sfp
# distances_unr8.c:69:         int dy1 = points[i].y - points[j].y;
	movswl	2(%rax), %r11d	# MEM <short int> [(struct Point[1000000] *)_557 + 2B], _620
	leal	-8(%r12), %eax	#, tmp395
	subl	%ecx, %eax	# j, tmp396
	movq	%rdi, 112(%rsp)	# tmp358, %sfp
	shrl	$3, %eax	#,
	movq	%r15, 120(%rsp)	# tmp364, %sfp
	leaq	(%rax,%rax,2), %rax	#, tmp401
	movl	%r11d, 80(%rsp)	# _620, %sfp
	movl	%r13d, %r11d	# _623, _623
	salq	$4, %rax	#, tmp402
	movq	%rbx, 104(%rsp)	# .omp_data_i, %sfp
	movq	%r8, %rbx	# ivtmp.64, ivtmp.64
	addq	%rdx, %rax	# tmp404, _554
	movq	%rax, 64(%rsp)	# _554, %sfp
	.p2align 4,,10
	.p2align 3
.L39:
# distances_unr8.c:68:         int dx1 = points[i].x - points[j].x;
	movl	76(%rsp), %esi	# %sfp, _617
# distances_unr8.c:68:         int dx1 = points[i].x - points[j].x;
	movswl	(%rbx), %eax	# MEM[(short int *)_590], MEM[(short int *)_590]
# distances_unr8.c:70:         int dz1 = points[i].z - points[j].z;
	movl	%r11d, %edx	# _623, dz1
# distances_unr8.c:74:         int dz2 = points[i].z - points[j + 1].z;
	movl	%r11d, %r14d	# _623, dz2
# distances_unr8.c:69:         int dy1 = points[i].y - points[j].y;
	movl	80(%rsp), %r8d	# %sfp, _620
# distances_unr8.c:78:         int dz3 = points[i].z - points[j + 2].z;
	movl	%r11d, %r9d	# _623, dz3
# distances_unr8.c:82:         int dz4 = points[i].z - points[j + 3].z;
	movl	%r11d, %r13d	# _623, dz4
# distances_unr8.c:86:         int dz5 = points[i].z - points[j + 4].z;
	movl	%r11d, %r12d	# _623, dz5
# distances_unr8.c:68:         int dx1 = points[i].x - points[j].x;
	movl	%esi, %edi	# _617, dx1
# distances_unr8.c:72:         int dx2 = points[i].x - points[j + 1].x;
	movl	%esi, %r10d	# _617, dx2
# distances_unr8.c:111:         int dist_index1 = (int)(sqrtf(dist_sq1) / SCALE_FACTOR * PRECISION);
	pxor	%xmm0, %xmm0	# _185
# distances_unr8.c:76:         int dx3 = points[i].x - points[j + 2].x;
	movl	%esi, %r15d	# _617, dx3
# distances_unr8.c:68:         int dx1 = points[i].x - points[j].x;
	subl	%eax, %edi	# MEM[(short int *)_590], dx1
# distances_unr8.c:69:         int dy1 = points[i].y - points[j].y;
	movswl	2(%rbx), %eax	# MEM[(short int *)_590 + 2B], MEM[(short int *)_590 + 2B]
# distances_unr8.c:69:         int dy1 = points[i].y - points[j].y;
	movl	%r8d, %ecx	# _620, dy1
# distances_unr8.c:73:         int dy2 = points[i].y - points[j + 1].y;
	movl	%r8d, %ebp	# _620, dy2
# distances_unr8.c:68:         int dx1 = points[i].x - points[j].x;
	movl	%edi, 8(%rsp)	# dx1, %sfp
# distances_unr8.c:93:         int dy7 = points[i].y - points[j + 6].y;
	movl	%r8d, %edi	# _620, dy7
# distances_unr8.c:69:         int dy1 = points[i].y - points[j].y;
	subl	%eax, %ecx	# MEM[(short int *)_590 + 2B], dy1
# distances_unr8.c:70:         int dz1 = points[i].z - points[j].z;
	movswl	4(%rbx), %eax	# MEM[(short int *)_590 + 4B], MEM[(short int *)_590 + 4B]
# distances_unr8.c:69:         int dy1 = points[i].y - points[j].y;
	movl	%ecx, 20(%rsp)	# dy1, %sfp
# distances_unr8.c:80:         int dx4 = points[i].x - points[j + 3].x;
	movl	%esi, %ecx	# _617, dx4
# distances_unr8.c:70:         int dz1 = points[i].z - points[j].z;
	subl	%eax, %edx	# MEM[(short int *)_590 + 4B], dz1
# distances_unr8.c:72:         int dx2 = points[i].x - points[j + 1].x;
	movswl	6(%rbx), %eax	# MEM[(short int *)_590 + 6B], MEM[(short int *)_590 + 6B]
# distances_unr8.c:70:         int dz1 = points[i].z - points[j].z;
	movl	%edx, 24(%rsp)	# dz1, %sfp
# distances_unr8.c:77:         int dy3 = points[i].y - points[j + 2].y;
	movl	%r8d, %edx	# _620, dy3
# distances_unr8.c:72:         int dx2 = points[i].x - points[j + 1].x;
	subl	%eax, %r10d	# MEM[(short int *)_590 + 6B], dx2
# distances_unr8.c:73:         int dy2 = points[i].y - points[j + 1].y;
	movswl	8(%rbx), %eax	# MEM[(short int *)_590 + 8B], MEM[(short int *)_590 + 8B]
# distances_unr8.c:102:         int dist_sq2 = dx2 * dx2 + dy2 * dy2 + dz2 * dz2;
	imull	%r10d, %r10d	# dx2, tmp429
# distances_unr8.c:73:         int dy2 = points[i].y - points[j + 1].y;
	subl	%eax, %ebp	# MEM[(short int *)_590 + 8B], dy2
# distances_unr8.c:74:         int dz2 = points[i].z - points[j + 1].z;
	movswl	10(%rbx), %eax	# MEM[(short int *)_590 + 10B], MEM[(short int *)_590 + 10B]
# distances_unr8.c:102:         int dist_sq2 = dx2 * dx2 + dy2 * dy2 + dz2 * dz2;
	imull	%ebp, %ebp	# dy2, tmp430
# distances_unr8.c:74:         int dz2 = points[i].z - points[j + 1].z;
	subl	%eax, %r14d	# MEM[(short int *)_590 + 10B], dz2
# distances_unr8.c:76:         int dx3 = points[i].x - points[j + 2].x;
	movswl	12(%rbx), %eax	# MEM[(short int *)_590 + 12B], MEM[(short int *)_590 + 12B]
# distances_unr8.c:74:         int dz2 = points[i].z - points[j + 1].z;
	movl	%r14d, 28(%rsp)	# dz2, %sfp
# distances_unr8.c:81:         int dy4 = points[i].y - points[j + 3].y;
	movl	%r8d, %r14d	# _620, dy4
# distances_unr8.c:76:         int dx3 = points[i].x - points[j + 2].x;
	subl	%eax, %r15d	# MEM[(short int *)_590 + 12B], dx3
# distances_unr8.c:77:         int dy3 = points[i].y - points[j + 2].y;
	movswl	14(%rbx), %eax	# MEM[(short int *)_590 + 14B], MEM[(short int *)_590 + 14B]
# distances_unr8.c:102:         int dist_sq2 = dx2 * dx2 + dy2 * dy2 + dz2 * dz2;
	addl	%r10d, %ebp	# tmp429, tmp431
# distances_unr8.c:103:         int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
	imull	%r15d, %r15d	# dx3, tmp433
# distances_unr8.c:77:         int dy3 = points[i].y - points[j + 2].y;
	subl	%eax, %edx	# MEM[(short int *)_590 + 14B], dy3
# distances_unr8.c:78:         int dz3 = points[i].z - points[j + 2].z;
	movswl	16(%rbx), %eax	# MEM[(short int *)_590 + 16B], MEM[(short int *)_590 + 16B]
# distances_unr8.c:77:         int dy3 = points[i].y - points[j + 2].y;
	movl	%edx, 40(%rsp)	# dy3, %sfp
# distances_unr8.c:84:         int dx5 = points[i].x - points[j + 4].x;
	movl	%esi, %edx	# _617, dx5
# distances_unr8.c:78:         int dz3 = points[i].z - points[j + 2].z;
	subl	%eax, %r9d	# MEM[(short int *)_590 + 16B], dz3
# distances_unr8.c:80:         int dx4 = points[i].x - points[j + 3].x;
	movswl	18(%rbx), %eax	# MEM[(short int *)_590 + 18B], MEM[(short int *)_590 + 18B]
# distances_unr8.c:78:         int dz3 = points[i].z - points[j + 2].z;
	movl	%r9d, 32(%rsp)	# dz3, %sfp
# distances_unr8.c:85:         int dy5 = points[i].y - points[j + 4].y;
	movl	%r8d, %r9d	# _620, dy5
# distances_unr8.c:80:         int dx4 = points[i].x - points[j + 3].x;
	subl	%eax, %ecx	# MEM[(short int *)_590 + 18B], dx4
# distances_unr8.c:81:         int dy4 = points[i].y - points[j + 3].y;
	movswl	20(%rbx), %eax	# MEM[(short int *)_590 + 20B], MEM[(short int *)_590 + 20B]
# distances_unr8.c:80:         int dx4 = points[i].x - points[j + 3].x;
	movl	%ecx, 44(%rsp)	# dx4, %sfp
# distances_unr8.c:81:         int dy4 = points[i].y - points[j + 3].y;
	subl	%eax, %r14d	# MEM[(short int *)_590 + 20B], dy4
# distances_unr8.c:82:         int dz4 = points[i].z - points[j + 3].z;
	movswl	22(%rbx), %eax	# MEM[(short int *)_590 + 22B], MEM[(short int *)_590 + 22B]
# distances_unr8.c:81:         int dy4 = points[i].y - points[j + 3].y;
	movl	%r14d, 48(%rsp)	# dy4, %sfp
# distances_unr8.c:82:         int dz4 = points[i].z - points[j + 3].z;
	subl	%eax, %r13d	# MEM[(short int *)_590 + 22B], dz4
# distances_unr8.c:84:         int dx5 = points[i].x - points[j + 4].x;
	movswl	24(%rbx), %eax	# MEM[(short int *)_590 + 24B], MEM[(short int *)_590 + 24B]
# distances_unr8.c:82:         int dz4 = points[i].z - points[j + 3].z;
	movl	%r13d, 52(%rsp)	# dz4, %sfp
# distances_unr8.c:88:         int dx6 = points[i].x - points[j + 5].x;
	movl	%esi, %r13d	# _617, dx6
# distances_unr8.c:84:         int dx5 = points[i].x - points[j + 4].x;
	subl	%eax, %edx	# MEM[(short int *)_590 + 24B], dx5
# distances_unr8.c:85:         int dy5 = points[i].y - points[j + 4].y;
	movswl	26(%rbx), %eax	# MEM[(short int *)_590 + 26B], MEM[(short int *)_590 + 26B]
# distances_unr8.c:84:         int dx5 = points[i].x - points[j + 4].x;
	movl	%edx, 56(%rsp)	# dx5, %sfp
# distances_unr8.c:94:         int dz7 = points[i].z - points[j + 6].z;
	movl	%r11d, %edx	# _623, dz7
# distances_unr8.c:85:         int dy5 = points[i].y - points[j + 4].y;
	subl	%eax, %r9d	# MEM[(short int *)_590 + 26B], dy5
# distances_unr8.c:86:         int dz5 = points[i].z - points[j + 4].z;
	movswl	28(%rbx), %eax	# MEM[(short int *)_590 + 28B], MEM[(short int *)_590 + 28B]
# distances_unr8.c:86:         int dz5 = points[i].z - points[j + 4].z;
	subl	%eax, %r12d	# MEM[(short int *)_590 + 28B], dz5
# distances_unr8.c:88:         int dx6 = points[i].x - points[j + 5].x;
	movswl	30(%rbx), %eax	# MEM[(short int *)_590 + 30B], MEM[(short int *)_590 + 30B]
# distances_unr8.c:86:         int dz5 = points[i].z - points[j + 4].z;
	movl	%r12d, %r14d	# dz5, dz5
# distances_unr8.c:89:         int dy6 = points[i].y - points[j + 5].y;
	movl	%r8d, %r12d	# _620, dy6
# distances_unr8.c:88:         int dx6 = points[i].x - points[j + 5].x;
	subl	%eax, %r13d	# MEM[(short int *)_590 + 30B], dx6
# distances_unr8.c:89:         int dy6 = points[i].y - points[j + 5].y;
	movswl	32(%rbx), %eax	# MEM[(short int *)_590 + 32B], MEM[(short int *)_590 + 32B]
# distances_unr8.c:89:         int dy6 = points[i].y - points[j + 5].y;
	subl	%eax, %r12d	# MEM[(short int *)_590 + 32B], dy6
# distances_unr8.c:90:         int dz6 = points[i].z - points[j + 5].z;
	movswl	34(%rbx), %eax	# MEM[(short int *)_590 + 34B], MEM[(short int *)_590 + 34B]
# distances_unr8.c:89:         int dy6 = points[i].y - points[j + 5].y;
	movl	%r12d, 60(%rsp)	# dy6, %sfp
# distances_unr8.c:90:         int dz6 = points[i].z - points[j + 5].z;
	movl	%r11d, %r12d	# _623, dz6
	subl	%eax, %r12d	# MEM[(short int *)_590 + 34B], dz6
# distances_unr8.c:92:         int dx7 = points[i].x - points[j + 6].x;
	movswl	36(%rbx), %eax	# MEM[(short int *)_590 + 36B], MEM[(short int *)_590 + 36B]
# distances_unr8.c:90:         int dz6 = points[i].z - points[j + 5].z;
	movl	%r12d, %ecx	# dz6, dz6
# distances_unr8.c:92:         int dx7 = points[i].x - points[j + 6].x;
	movl	%esi, %r12d	# _617, dx7
	subl	%eax, %r12d	# MEM[(short int *)_590 + 36B], dx7
# distances_unr8.c:93:         int dy7 = points[i].y - points[j + 6].y;
	movswl	38(%rbx), %eax	# MEM[(short int *)_590 + 38B], MEM[(short int *)_590 + 38B]
# distances_unr8.c:102:         int dist_sq2 = dx2 * dx2 + dy2 * dy2 + dz2 * dz2;
	movl	28(%rsp), %r10d	# %sfp, dz2
	imull	%r10d, %r10d	# dz2, dz2
# distances_unr8.c:93:         int dy7 = points[i].y - points[j + 6].y;
	subl	%eax, %edi	# MEM[(short int *)_590 + 38B], dy7
# distances_unr8.c:94:         int dz7 = points[i].z - points[j + 6].z;
	movswl	40(%rbx), %eax	# MEM[(short int *)_590 + 40B], MEM[(short int *)_590 + 40B]
# distances_unr8.c:94:         int dz7 = points[i].z - points[j + 6].z;
	subl	%eax, %edx	# MEM[(short int *)_590 + 40B], dz7
# distances_unr8.c:96:         int dx8 = points[i].x - points[j + 7].x;
	movswl	42(%rbx), %eax	# MEM[(short int *)_590 + 42B], MEM[(short int *)_590 + 42B]
# distances_unr8.c:102:         int dist_sq2 = dx2 * dx2 + dy2 * dy2 + dz2 * dz2;
	addl	%r10d, %ebp	# tmp432, dist_sq2
# distances_unr8.c:103:         int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
	movl	40(%rsp), %r10d	# %sfp, dy3
# distances_unr8.c:96:         int dx8 = points[i].x - points[j + 7].x;
	subl	%eax, %esi	# MEM[(short int *)_590 + 42B], dx8
# distances_unr8.c:97:         int dy8 = points[i].y - points[j + 7].y;
	movswl	44(%rbx), %eax	# MEM[(short int *)_590 + 44B], MEM[(short int *)_590 + 44B]
# distances_unr8.c:103:         int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
	imull	%r10d, %r10d	# dy3, dy3
# distances_unr8.c:96:         int dx8 = points[i].x - points[j + 7].x;
	movl	%esi, 72(%rsp)	# dx8, %sfp
# distances_unr8.c:97:         int dy8 = points[i].y - points[j + 7].y;
	movl	%r8d, %esi	# _620, dy8
	subl	%eax, %esi	# MEM[(short int *)_590 + 44B], dy8
# distances_unr8.c:98:         int dz8 = points[i].z - points[j + 7].z;
	movswl	46(%rbx), %eax	# MEM[(short int *)_590 + 46B], MEM[(short int *)_590 + 46B]
# distances_unr8.c:103:         int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
	addl	%r15d, %r10d	# tmp433, tmp435
# distances_unr8.c:103:         int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
	movl	32(%rsp), %r15d	# %sfp, dz3
# distances_unr8.c:98:         int dz8 = points[i].z - points[j + 7].z;
	movl	%eax, %r8d	# MEM[(short int *)_590 + 46B], MEM[(short int *)_590 + 46B]
# distances_unr8.c:98:         int dz8 = points[i].z - points[j + 7].z;
	movl	%r11d, %eax	# _623, dz8
	subl	%r8d, %eax	# MEM[(short int *)_590 + 46B], dz8
# distances_unr8.c:103:         int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
	imull	%r15d, %r15d	# dz3, dz3
# distances_unr8.c:105:         int dist_sq5 = dx5 * dx5 + dy5 * dy5 + dz5 * dz5;
	imull	%r9d, %r9d	# dy5, tmp442
# distances_unr8.c:105:         int dist_sq5 = dx5 * dx5 + dy5 * dy5 + dz5 * dz5;
	imull	%r14d, %r14d	# dz5, tmp444
# distances_unr8.c:107:         int dist_sq7 = dx7 * dx7 + dy7 * dy7 + dz7 * dz7;
	imull	%r12d, %r12d	# dx7, tmp449
# distances_unr8.c:103:         int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
	leal	(%r10,%r15), %r8d	#, dist_sq3
# distances_unr8.c:104:         int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;
	movl	44(%rsp), %r15d	# %sfp, dx4
# distances_unr8.c:104:         int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;
	movl	48(%rsp), %r10d	# %sfp, dy4
# distances_unr8.c:107:         int dist_sq7 = dx7 * dx7 + dy7 * dy7 + dz7 * dz7;
	imull	%edi, %edi	# dy7, tmp450
# distances_unr8.c:103:         int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
	movl	%r8d, 28(%rsp)	# dist_sq3, %sfp
# distances_unr8.c:106:         int dist_sq6 = dx6 * dx6 + dy6 * dy6 + dz6 * dz6;
	movl	60(%rsp), %r8d	# %sfp, dy6
# distances_unr8.c:104:         int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;
	imull	%r15d, %r15d	# dx4, dx4
# distances_unr8.c:104:         int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;
	imull	%r10d, %r10d	# dy4, dy4
# distances_unr8.c:107:         int dist_sq7 = dx7 * dx7 + dy7 * dy7 + dz7 * dz7;
	imull	%edx, %edx	# dz7, tmp452
# distances_unr8.c:107:         int dist_sq7 = dx7 * dx7 + dy7 * dy7 + dz7 * dz7;
	addl	%r12d, %edi	# tmp449, tmp451
# distances_unr8.c:108:         int dist_sq8 = dx8 * dx8 + dy8 * dy8 + dz8 * dz8;
	imull	%esi, %esi	# dy8, tmp454
# distances_unr8.c:104:         int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;
	addl	%r15d, %r10d	# tmp437, tmp439
# distances_unr8.c:104:         int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;
	movl	52(%rsp), %r15d	# %sfp, dz4
# distances_unr8.c:108:         int dist_sq8 = dx8 * dx8 + dy8 * dy8 + dz8 * dz8;
	imull	%eax, %eax	# dz8, tmp456
# distances_unr8.c:107:         int dist_sq7 = dx7 * dx7 + dy7 * dy7 + dz7 * dz7;
	addl	%edi, %edx	# tmp451, dist_sq7
# distances_unr8.c:106:         int dist_sq6 = dx6 * dx6 + dy6 * dy6 + dz6 * dz6;
	imull	%r13d, %r13d	# dx6, tmp445
# distances_unr8.c:104:         int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;
	imull	%r15d, %r15d	# dz4, dz4
# distances_unr8.c:106:         int dist_sq6 = dx6 * dx6 + dy6 * dy6 + dz6 * dz6;
	imull	%r8d, %r8d	# dy6, dy6
# distances_unr8.c:106:         int dist_sq6 = dx6 * dx6 + dy6 * dy6 + dz6 * dz6;
	imull	%ecx, %ecx	# dz6, tmp448
# distances_unr8.c:104:         int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;
	addl	%r10d, %r15d	# tmp439, dist_sq4
# distances_unr8.c:105:         int dist_sq5 = dx5 * dx5 + dy5 * dy5 + dz5 * dz5;
	movl	56(%rsp), %r10d	# %sfp, dx5
# distances_unr8.c:106:         int dist_sq6 = dx6 * dx6 + dy6 * dy6 + dz6 * dz6;
	addl	%r13d, %r8d	# tmp445, tmp447
# distances_unr8.c:105:         int dist_sq5 = dx5 * dx5 + dy5 * dy5 + dz5 * dz5;
	imull	%r10d, %r10d	# dx5, dx5
# distances_unr8.c:106:         int dist_sq6 = dx6 * dx6 + dy6 * dy6 + dz6 * dz6;
	addl	%r8d, %ecx	# tmp447, dist_sq6
# distances_unr8.c:105:         int dist_sq5 = dx5 * dx5 + dy5 * dy5 + dz5 * dz5;
	addl	%r10d, %r9d	# tmp441, tmp443
# distances_unr8.c:105:         int dist_sq5 = dx5 * dx5 + dy5 * dy5 + dz5 * dz5;
	addl	%r9d, %r14d	# tmp443, dist_sq5
# distances_unr8.c:108:         int dist_sq8 = dx8 * dx8 + dy8 * dy8 + dz8 * dz8;
	movl	72(%rsp), %r9d	# %sfp, dx8
	movl	%r9d, %edi	# dx8, dx8
	imull	%r9d, %edi	# dx8, dx8
# distances_unr8.c:108:         int dist_sq8 = dx8 * dx8 + dy8 * dy8 + dz8 * dz8;
	addl	%edi, %esi	# tmp453, tmp455
# distances_unr8.c:101:         int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
	movl	20(%rsp), %edi	# %sfp, dy1
# distances_unr8.c:108:         int dist_sq8 = dx8 * dx8 + dy8 * dy8 + dz8 * dz8;
	addl	%esi, %eax	# tmp455, dist_sq8
# distances_unr8.c:101:         int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
	movl	8(%rsp), %esi	# %sfp, dx1
# distances_unr8.c:101:         int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
	imull	%edi, %edi	# dy1, dy1
# distances_unr8.c:101:         int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
	imull	%esi, %esi	# dx1, dx1
# distances_unr8.c:101:         int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
	addl	%esi, %edi	# tmp457, tmp459
# distances_unr8.c:101:         int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
	movl	24(%rsp), %esi	# %sfp, dz1
	imull	%esi, %esi	# dz1, dz1
# distances_unr8.c:101:         int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
	addl	%esi, %edi	# tmp460, dist_sq1
# distances_unr8.c:111:         int dist_index1 = (int)(sqrtf(dist_sq1) / SCALE_FACTOR * PRECISION);
	cvtsi2ssl	%edi, %xmm0	# dist_sq1, _185
	ucomiss	%xmm0, %xmm1	# _185, tmp559
	ja	.L59	#,
	sqrtss	%xmm0, %xmm0	# _185, _187
.L17:
# distances_unr8.c:111:         int dist_index1 = (int)(sqrtf(dist_sq1) / SCALE_FACTOR * PRECISION);
	divss	%xmm3, %xmm0	# tmp557, tmp463
# distances_unr8.c:111:         int dist_index1 = (int)(sqrtf(dist_sq1) / SCALE_FACTOR * PRECISION);
	mulss	%xmm2, %xmm0	# tmp558, tmp465
# distances_unr8.c:111:         int dist_index1 = (int)(sqrtf(dist_sq1) / SCALE_FACTOR * PRECISION);
	cvttss2sil	%xmm0, %r12d	# tmp465, dist_index1
# distances_unr8.c:112:         int dist_index2 = (int)(sqrtf(dist_sq2) / SCALE_FACTOR * PRECISION);  
	pxor	%xmm0, %xmm0	# _191
	cvtsi2ssl	%ebp, %xmm0	# dist_sq2, _191
	ucomiss	%xmm0, %xmm1	# _191, tmp559
	ja	.L60	#,
	sqrtss	%xmm0, %xmm0	# _191, _193
.L20:
# distances_unr8.c:112:         int dist_index2 = (int)(sqrtf(dist_sq2) / SCALE_FACTOR * PRECISION);  
	divss	%xmm3, %xmm0	# tmp557, tmp468
# distances_unr8.c:112:         int dist_index2 = (int)(sqrtf(dist_sq2) / SCALE_FACTOR * PRECISION);  
	mulss	%xmm2, %xmm0	# tmp558, tmp470
# distances_unr8.c:112:         int dist_index2 = (int)(sqrtf(dist_sq2) / SCALE_FACTOR * PRECISION);  
	cvttss2sil	%xmm0, %ebp	# tmp470, dist_index2
# distances_unr8.c:113:         int dist_index3 = (int)(sqrtf(dist_sq3) / SCALE_FACTOR * PRECISION);  
	pxor	%xmm0, %xmm0	# _197
	cvtsi2ssl	28(%rsp), %xmm0	# %sfp, _197
	ucomiss	%xmm0, %xmm1	# _197, tmp559
	ja	.L61	#,
	sqrtss	%xmm0, %xmm0	# _197, _199
.L23:
# distances_unr8.c:113:         int dist_index3 = (int)(sqrtf(dist_sq3) / SCALE_FACTOR * PRECISION);  
	divss	%xmm3, %xmm0	# tmp557, tmp473
# distances_unr8.c:113:         int dist_index3 = (int)(sqrtf(dist_sq3) / SCALE_FACTOR * PRECISION);  
	mulss	%xmm2, %xmm0	# tmp558, tmp475
# distances_unr8.c:113:         int dist_index3 = (int)(sqrtf(dist_sq3) / SCALE_FACTOR * PRECISION);  
	cvttss2sil	%xmm0, %r13d	# tmp475, dist_index3
# distances_unr8.c:114:         int dist_index4 = (int)(sqrtf(dist_sq4) / SCALE_FACTOR * PRECISION);  
	pxor	%xmm0, %xmm0	# _203
	cvtsi2ssl	%r15d, %xmm0	# dist_sq4, _203
	ucomiss	%xmm0, %xmm1	# _203, tmp559
	ja	.L62	#,
	sqrtss	%xmm0, %xmm0	# _203, _205
.L26:
# distances_unr8.c:114:         int dist_index4 = (int)(sqrtf(dist_sq4) / SCALE_FACTOR * PRECISION);  
	divss	%xmm3, %xmm0	# tmp557, tmp478
# distances_unr8.c:114:         int dist_index4 = (int)(sqrtf(dist_sq4) / SCALE_FACTOR * PRECISION);  
	mulss	%xmm2, %xmm0	# tmp558, tmp480
# distances_unr8.c:114:         int dist_index4 = (int)(sqrtf(dist_sq4) / SCALE_FACTOR * PRECISION);  
	cvttss2sil	%xmm0, %r15d	# tmp480, dist_index4
# distances_unr8.c:115:         int dist_index5 = (int)(sqrtf(dist_sq5) / SCALE_FACTOR * PRECISION);
	pxor	%xmm0, %xmm0	# _209
	cvtsi2ssl	%r14d, %xmm0	# dist_sq5, _209
	ucomiss	%xmm0, %xmm1	# _209, tmp559
	ja	.L63	#,
	sqrtss	%xmm0, %xmm0	# _209, _211
.L29:
# distances_unr8.c:115:         int dist_index5 = (int)(sqrtf(dist_sq5) / SCALE_FACTOR * PRECISION);
	divss	%xmm3, %xmm0	# tmp557, tmp483
# distances_unr8.c:115:         int dist_index5 = (int)(sqrtf(dist_sq5) / SCALE_FACTOR * PRECISION);
	mulss	%xmm2, %xmm0	# tmp558, tmp485
# distances_unr8.c:115:         int dist_index5 = (int)(sqrtf(dist_sq5) / SCALE_FACTOR * PRECISION);
	cvttss2sil	%xmm0, %r14d	# tmp485, dist_index5
# distances_unr8.c:116:         int dist_index6 = (int)(sqrtf(dist_sq6) / SCALE_FACTOR * PRECISION);  
	pxor	%xmm0, %xmm0	# _215
	cvtsi2ssl	%ecx, %xmm0	# dist_sq6, _215
	ucomiss	%xmm0, %xmm1	# _215, tmp559
	ja	.L64	#,
	sqrtss	%xmm0, %xmm0	# _215, _217
.L32:
# distances_unr8.c:116:         int dist_index6 = (int)(sqrtf(dist_sq6) / SCALE_FACTOR * PRECISION);  
	divss	%xmm3, %xmm0	# tmp557, tmp488
# distances_unr8.c:116:         int dist_index6 = (int)(sqrtf(dist_sq6) / SCALE_FACTOR * PRECISION);  
	mulss	%xmm2, %xmm0	# tmp558, tmp490
# distances_unr8.c:116:         int dist_index6 = (int)(sqrtf(dist_sq6) / SCALE_FACTOR * PRECISION);  
	cvttss2sil	%xmm0, %ecx	# tmp490, dist_index6
# distances_unr8.c:117:         int dist_index7 = (int)(sqrtf(dist_sq7) / SCALE_FACTOR * PRECISION);  
	pxor	%xmm0, %xmm0	# _221
	cvtsi2ssl	%edx, %xmm0	# dist_sq7, _221
	ucomiss	%xmm0, %xmm1	# _221, tmp559
	ja	.L65	#,
	sqrtss	%xmm0, %xmm0	# _221, _223
.L35:
# distances_unr8.c:117:         int dist_index7 = (int)(sqrtf(dist_sq7) / SCALE_FACTOR * PRECISION);  
	divss	%xmm3, %xmm0	# tmp557, tmp493
# distances_unr8.c:117:         int dist_index7 = (int)(sqrtf(dist_sq7) / SCALE_FACTOR * PRECISION);  
	mulss	%xmm2, %xmm0	# tmp558, tmp495
# distances_unr8.c:117:         int dist_index7 = (int)(sqrtf(dist_sq7) / SCALE_FACTOR * PRECISION);  
	cvttss2sil	%xmm0, %edx	# tmp495, dist_index7
# distances_unr8.c:118:         int dist_index8 = (int)(sqrtf(dist_sq8) / SCALE_FACTOR * PRECISION);  
	pxor	%xmm0, %xmm0	# _227
	cvtsi2ssl	%eax, %xmm0	# dist_sq8, _227
	ucomiss	%xmm0, %xmm1	# _227, tmp559
	ja	.L66	#,
	sqrtss	%xmm0, %xmm0	# _227, _229
.L38:
# distances_unr8.c:118:         int dist_index8 = (int)(sqrtf(dist_sq8) / SCALE_FACTOR * PRECISION);  
	divss	%xmm3, %xmm0	# tmp557, tmp498
# distances_unr8.c:120:         local_distance_count[dist_index1]++;
	movslq	%r12d, %r12	# dist_index1, dist_index1
# distances_unr8.c:121:         local_distance_count[dist_index2]++;
	movslq	%ebp, %rbp	# dist_index2, dist_index2
# distances_unr8.c:122:         local_distance_count[dist_index3]++;
	movslq	%r13d, %r13	# dist_index3, dist_index3
# distances_unr8.c:123:         local_distance_count[dist_index4]++;
	movslq	%r15d, %r15	# dist_index4, dist_index4
# distances_unr8.c:124:         local_distance_count[dist_index5]++;
	movslq	%r14d, %r14	# dist_index5, dist_index5
# distances_unr8.c:125:         local_distance_count[dist_index6]++;
	movslq	%ecx, %rcx	# dist_index6, dist_index6
# distances_unr8.c:126:         local_distance_count[dist_index7]++;
	movslq	%edx, %rdx	# dist_index7, dist_index7
# distances_unr8.c:120:         local_distance_count[dist_index1]++;
	addl	$1, 144(%rsp,%r12,4)	#, local_distance_count[dist_index1_190]
# distances_unr8.c:65:       for (int j = i + 1; j + UNROLL_FACTOR - 1 < num_points - remainder;
	addq	$48, %rbx	#, ivtmp.64
# distances_unr8.c:121:         local_distance_count[dist_index2]++;
	addl	$1, 144(%rsp,%rbp,4)	#, local_distance_count[dist_index2_196]
# distances_unr8.c:122:         local_distance_count[dist_index3]++;
	addl	$1, 144(%rsp,%r13,4)	#, local_distance_count[dist_index3_202]
# distances_unr8.c:123:         local_distance_count[dist_index4]++;
	addl	$1, 144(%rsp,%r15,4)	#, local_distance_count[dist_index4_208]
# distances_unr8.c:124:         local_distance_count[dist_index5]++;
	addl	$1, 144(%rsp,%r14,4)	#, local_distance_count[dist_index5_214]
# distances_unr8.c:125:         local_distance_count[dist_index6]++;
	addl	$1, 144(%rsp,%rcx,4)	#, local_distance_count[dist_index6_220]
# distances_unr8.c:126:         local_distance_count[dist_index7]++;
	addl	$1, 144(%rsp,%rdx,4)	#, local_distance_count[dist_index7_226]
# distances_unr8.c:118:         int dist_index8 = (int)(sqrtf(dist_sq8) / SCALE_FACTOR * PRECISION);  
	mulss	%xmm2, %xmm0	# tmp558, tmp500
# distances_unr8.c:118:         int dist_index8 = (int)(sqrtf(dist_sq8) / SCALE_FACTOR * PRECISION);  
	cvttss2sil	%xmm0, %eax	# tmp500, dist_index8
# distances_unr8.c:127:         local_distance_count[dist_index8]++;
	cltq
	addl	$1, 144(%rsp,%rax,4)	#, local_distance_count[dist_index8_232]
# distances_unr8.c:65:       for (int j = i + 1; j + UNROLL_FACTOR - 1 < num_points - remainder;
	cmpq	%rbx, 64(%rsp)	# ivtmp.64, %sfp
	jne	.L39	#,
	movl	84(%rsp), %ecx	# %sfp, j
	movl	88(%rsp), %esi	# %sfp, _25
	movl	92(%rsp), %ebp	# %sfp, i
	movq	96(%rsp), %r14	# %sfp, ivtmp.75
	movl	128(%rsp), %r12d	# %sfp, _612
	movq	104(%rsp), %rbx	# %sfp, .omp_data_i
	movq	112(%rsp), %rdi	# %sfp, tmp358
	movq	120(%rsp), %r15	# %sfp, tmp364
.L40:
# distances_unr8.c:132:       for (int j = num_points - remainder; j < num_points; j++) {
	cmpl	%r12d, 132(%rsp)	# _612, %sfp
	jle	.L13	#,
# distances_unr8.c:133:         int dx = points[i].x - points[j].x;
	movq	(%rbx), %r8	# *.omp_data_i_14(D).points, pretmp_624
	movslq	%ebp, %rax	# i, i
	movl	%ecx, 8(%rsp)	# j, %sfp
	leaq	(%rax,%rax,2), %rax	#, tmp369
	movss	.LC1(%rip), %xmm5	#, tmp554
	movss	.LC2(%rip), %xmm4	#, tmp555
	leaq	(%r8,%rax,2), %rax	#, _59
	leaq	(%r8,%rdi), %rbp	#, ivtmp.54
	movswl	(%rax), %r11d	# MEM <short int> [(struct Point[1000000] *)_59], _628
# distances_unr8.c:134:         int dy = points[i].y - points[j].y;
	movswl	2(%rax), %r10d	# MEM <short int> [(struct Point[1000000] *)_59 + 2B], _631
	leaq	(%r8,%r15), %r13	#, _598
# distances_unr8.c:135:         int dz = points[i].z - points[j].z;
	movswl	4(%rax), %r9d	# MEM <short int> [(struct Point[1000000] *)_59 + 4B], _634
	.p2align 4,,10
	.p2align 3
.L12:
# distances_unr8.c:133:         int dx = points[i].x - points[j].x;
	movswl	0(%rbp), %edx	# MEM[(short int *)_609], MEM[(short int *)_609]
# distances_unr8.c:133:         int dx = points[i].x - points[j].x;
	movl	%r11d, %eax	# _628, dx
# distances_unr8.c:135:         int dz = points[i].z - points[j].z;
	movswl	4(%rbp), %r8d	# MEM[(short int *)_609 + 4B], MEM[(short int *)_609 + 4B]
# distances_unr8.c:134:         int dy = points[i].y - points[j].y;
	movl	%r10d, %ecx	# _631, dy
# distances_unr8.c:137:         int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
	pxor	%xmm0, %xmm0	# _50
# distances_unr8.c:133:         int dx = points[i].x - points[j].x;
	subl	%edx, %eax	# MEM[(short int *)_609], dx
# distances_unr8.c:134:         int dy = points[i].y - points[j].y;
	movswl	2(%rbp), %edx	# MEM[(short int *)_609 + 2B], MEM[(short int *)_609 + 2B]
# distances_unr8.c:136:         int dist_sq = dx * dx + dy * dy + dz * dz;
	imull	%eax, %eax	# dx, tmp374
# distances_unr8.c:134:         int dy = points[i].y - points[j].y;
	subl	%edx, %ecx	# MEM[(short int *)_609 + 2B], dy
# distances_unr8.c:135:         int dz = points[i].z - points[j].z;
	movl	%r9d, %edx	# _634, dz
# distances_unr8.c:136:         int dist_sq = dx * dx + dy * dy + dz * dz;
	imull	%ecx, %ecx	# dy, tmp375
# distances_unr8.c:135:         int dz = points[i].z - points[j].z;
	subl	%r8d, %edx	# MEM[(short int *)_609 + 4B], dz
# distances_unr8.c:136:         int dist_sq = dx * dx + dy * dy + dz * dz;
	imull	%edx, %edx	# dz, tmp377
# distances_unr8.c:136:         int dist_sq = dx * dx + dy * dy + dz * dz;
	addl	%ecx, %eax	# tmp375, tmp376
# distances_unr8.c:136:         int dist_sq = dx * dx + dy * dy + dz * dz;
	addl	%eax, %edx	# tmp376, dist_sq
# distances_unr8.c:137:         int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
	cvtsi2ssl	%edx, %xmm0	# dist_sq, _50
	ucomiss	%xmm0, %xmm1	# _50, tmp559
	ja	.L58	#,
	sqrtss	%xmm0, %xmm0	# _50, _52
.L10:
# distances_unr8.c:137:         int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
	divss	%xmm5, %xmm0	# tmp554, tmp380
# distances_unr8.c:137:         int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
	mulss	%xmm4, %xmm0	# tmp555, tmp382
# distances_unr8.c:137:         int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
	cvttss2sil	%xmm0, %eax	# tmp382, dist_index
# distances_unr8.c:138:         if (dist_index < N_BINS) {
	cmpl	$3464, %eax	#, dist_index
	jg	.L14	#,
# distances_unr8.c:139:           local_distance_count[dist_index]++;
	cltq
	addl	$1, 144(%rsp,%rax,4)	#, local_distance_count[dist_index_55]
.L14:
# distances_unr8.c:132:       for (int j = num_points - remainder; j < num_points; j++) {
	addq	$6, %rbp	#, ivtmp.54
	cmpq	%r13, %rbp	# _598, ivtmp.54
	jne	.L12	#,
	movl	8(%rsp), %ecx	# %sfp, j
.L13:
	addq	$6, %r14	#, ivtmp.75
	cmpl	%ecx, %esi	# j, _25
	jne	.L6	#,
	movq	%rbx, %r9	# .omp_data_i, .omp_data_i
	movq	136(%rsp), %rbx	# %sfp, tmp556
.L3:
	movq	%r9, 8(%rsp)	# .omp_data_i, %sfp
	call	GOMP_barrier@PLT	#
# distances_unr8.c:144:     #pragma omp critical
	call	GOMP_critical_start@PLT	#
# distances_unr8.c:147:         global_distance_count[i] += local_distance_count[i];
	movq	8(%rsp), %r9	# %sfp, .omp_data_i
	xorl	%eax, %eax	# ivtmp.48
	movq	8(%r9), %rdx	# *.omp_data_i_14(D).global_distance_count, _262
	.p2align 4,,10
	.p2align 3
.L7:
# distances_unr8.c:147:         global_distance_count[i] += local_distance_count[i];
	movl	(%rbx,%rax), %ecx	# MEM[(int *)&local_distance_count + ivtmp.48_298 * 1], MEM[(int *)&local_distance_count + ivtmp.48_298 * 1]
	addl	%ecx, (%rdx,%rax)	# MEM[(int *)&local_distance_count + ivtmp.48_298 * 1], MEM[(int *)_262 + ivtmp.48_298 * 1]
# distances_unr8.c:146:       for (int i = 0; i < N_BINS; i++) {
	addq	$4, %rax	#, ivtmp.48
	cmpq	$13860, %rax	#, ivtmp.48
	jne	.L7	#,
# distances_unr8.c:144:     #pragma omp critical
	movq	14008(%rsp), %rax	# D.6587, tmp574
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp574
	jne	.L70	#,
# distances_unr8.c:60:   #pragma omp parallel
	addq	$14024, %rsp	#,
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
# distances_unr8.c:144:     #pragma omp critical
	jmp	GOMP_critical_end@PLT	#
.L2:
	.cfi_restore_state
	addl	$1, %eax	#, q.8_1
# distances_unr8.c:62:     int local_distance_count[N_BINS] = {0};
	xorl	%edx, %edx	# tt.9_2
	jmp	.L43	#
.L58:
	movq	%rdi, 32(%rsp)	# tmp358, %sfp
	movl	%r9d, 40(%rsp)	# _634, %sfp
	movl	%r10d, 28(%rsp)	# _631, %sfp
	movl	%r11d, 24(%rsp)	# _628, %sfp
	movl	%esi, 20(%rsp)	# _25, %sfp
# distances_unr8.c:137:         int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
	call	sqrtf@PLT	#
	movq	32(%rsp), %rdi	# %sfp, tmp358
	movl	40(%rsp), %r9d	# %sfp, _634
	pxor	%xmm1, %xmm1	# tmp559
	movss	.LC2(%rip), %xmm2	#, tmp558
	movss	.LC1(%rip), %xmm3	#, tmp557
	movl	28(%rsp), %r10d	# %sfp, _631
	movl	24(%rsp), %r11d	# %sfp, _628
	movl	20(%rsp), %esi	# %sfp, _25
	movaps	%xmm2, %xmm4	# tmp558, tmp555
	movaps	%xmm3, %xmm5	# tmp557, tmp554
	jmp	.L10	#
.L66:
	movl	%r11d, 24(%rsp)	# _623, %sfp
	movl	%edx, 20(%rsp)	# dist_index7, %sfp
	movl	%ecx, 8(%rsp)	# dist_index6, %sfp
# distances_unr8.c:118:         int dist_index8 = (int)(sqrtf(dist_sq8) / SCALE_FACTOR * PRECISION);  
	call	sqrtf@PLT	#
	movl	24(%rsp), %r11d	# %sfp, _623
	movl	20(%rsp), %edx	# %sfp, dist_index7
	pxor	%xmm1, %xmm1	# tmp559
	movss	.LC2(%rip), %xmm2	#, tmp558
	movss	.LC1(%rip), %xmm3	#, tmp557
	movl	8(%rsp), %ecx	# %sfp, dist_index6
	jmp	.L38	#
.L65:
	movl	%r11d, 24(%rsp)	# _623, %sfp
	movl	%ecx, 20(%rsp)	# dist_index6, %sfp
	movl	%eax, 8(%rsp)	# dist_sq8, %sfp
# distances_unr8.c:117:         int dist_index7 = (int)(sqrtf(dist_sq7) / SCALE_FACTOR * PRECISION);  
	call	sqrtf@PLT	#
	movl	24(%rsp), %r11d	# %sfp, _623
	movl	20(%rsp), %ecx	# %sfp, dist_index6
	pxor	%xmm1, %xmm1	# tmp559
	movss	.LC2(%rip), %xmm2	#, tmp558
	movss	.LC1(%rip), %xmm3	#, tmp557
	movl	8(%rsp), %eax	# %sfp, dist_sq8
	jmp	.L35	#
.L64:
	movl	%r11d, 24(%rsp)	# _623, %sfp
	movl	%eax, 20(%rsp)	# dist_sq8, %sfp
	movl	%edx, 8(%rsp)	# dist_sq7, %sfp
# distances_unr8.c:116:         int dist_index6 = (int)(sqrtf(dist_sq6) / SCALE_FACTOR * PRECISION);  
	call	sqrtf@PLT	#
	movl	24(%rsp), %r11d	# %sfp, _623
	movl	20(%rsp), %eax	# %sfp, dist_sq8
	pxor	%xmm1, %xmm1	# tmp559
	movss	.LC2(%rip), %xmm2	#, tmp558
	movss	.LC1(%rip), %xmm3	#, tmp557
	movl	8(%rsp), %edx	# %sfp, dist_sq7
	jmp	.L32	#
.L63:
	movl	%r11d, 28(%rsp)	# _623, %sfp
	movl	%eax, 24(%rsp)	# dist_sq8, %sfp
	movl	%edx, 20(%rsp)	# dist_sq7, %sfp
	movl	%ecx, 8(%rsp)	# dist_sq6, %sfp
# distances_unr8.c:115:         int dist_index5 = (int)(sqrtf(dist_sq5) / SCALE_FACTOR * PRECISION);
	call	sqrtf@PLT	#
	movl	28(%rsp), %r11d	# %sfp, _623
	movl	24(%rsp), %eax	# %sfp, dist_sq8
	pxor	%xmm1, %xmm1	# tmp559
	movss	.LC2(%rip), %xmm2	#, tmp558
	movss	.LC1(%rip), %xmm3	#, tmp557
	movl	20(%rsp), %edx	# %sfp, dist_sq7
	movl	8(%rsp), %ecx	# %sfp, dist_sq6
	jmp	.L29	#
.L62:
	movl	%r11d, 28(%rsp)	# _623, %sfp
	movl	%eax, 24(%rsp)	# dist_sq8, %sfp
	movl	%edx, 20(%rsp)	# dist_sq7, %sfp
	movl	%ecx, 8(%rsp)	# dist_sq6, %sfp
# distances_unr8.c:114:         int dist_index4 = (int)(sqrtf(dist_sq4) / SCALE_FACTOR * PRECISION);  
	call	sqrtf@PLT	#
	movl	28(%rsp), %r11d	# %sfp, _623
	movl	24(%rsp), %eax	# %sfp, dist_sq8
	pxor	%xmm1, %xmm1	# tmp559
	movss	.LC2(%rip), %xmm2	#, tmp558
	movss	.LC1(%rip), %xmm3	#, tmp557
	movl	20(%rsp), %edx	# %sfp, dist_sq7
	movl	8(%rsp), %ecx	# %sfp, dist_sq6
	jmp	.L26	#
.L61:
	movl	%r11d, 28(%rsp)	# _623, %sfp
	movl	%eax, 24(%rsp)	# dist_sq8, %sfp
	movl	%edx, 20(%rsp)	# dist_sq7, %sfp
	movl	%ecx, 8(%rsp)	# dist_sq6, %sfp
# distances_unr8.c:113:         int dist_index3 = (int)(sqrtf(dist_sq3) / SCALE_FACTOR * PRECISION);  
	call	sqrtf@PLT	#
	movl	28(%rsp), %r11d	# %sfp, _623
	movl	24(%rsp), %eax	# %sfp, dist_sq8
	pxor	%xmm1, %xmm1	# tmp559
	movss	.LC2(%rip), %xmm2	#, tmp558
	movss	.LC1(%rip), %xmm3	#, tmp557
	movl	20(%rsp), %edx	# %sfp, dist_sq7
	movl	8(%rsp), %ecx	# %sfp, dist_sq6
	jmp	.L23	#
.L60:
	movl	%r11d, 40(%rsp)	# _623, %sfp
	movl	%eax, 24(%rsp)	# dist_sq8, %sfp
	movl	%edx, 20(%rsp)	# dist_sq7, %sfp
	movl	%ecx, 8(%rsp)	# dist_sq6, %sfp
# distances_unr8.c:112:         int dist_index2 = (int)(sqrtf(dist_sq2) / SCALE_FACTOR * PRECISION);  
	call	sqrtf@PLT	#
	movl	40(%rsp), %r11d	# %sfp, _623
	movl	24(%rsp), %eax	# %sfp, dist_sq8
	pxor	%xmm1, %xmm1	# tmp559
	movss	.LC2(%rip), %xmm2	#, tmp558
	movss	.LC1(%rip), %xmm3	#, tmp557
	movl	20(%rsp), %edx	# %sfp, dist_sq7
	movl	8(%rsp), %ecx	# %sfp, dist_sq6
	jmp	.L20	#
.L59:
	movl	%r11d, 40(%rsp)	# _623, %sfp
	movl	%eax, 24(%rsp)	# dist_sq8, %sfp
	movl	%edx, 20(%rsp)	# dist_sq7, %sfp
	movl	%ecx, 8(%rsp)	# dist_sq6, %sfp
# distances_unr8.c:111:         int dist_index1 = (int)(sqrtf(dist_sq1) / SCALE_FACTOR * PRECISION);
	call	sqrtf@PLT	#
	movl	40(%rsp), %r11d	# %sfp, _623
	movl	24(%rsp), %eax	# %sfp, dist_sq8
	pxor	%xmm1, %xmm1	# tmp559
	movss	.LC2(%rip), %xmm2	#, tmp558
	movss	.LC1(%rip), %xmm3	#, tmp557
	movl	20(%rsp), %edx	# %sfp, dist_sq7
	movl	8(%rsp), %ecx	# %sfp, dist_sq6
	jmp	.L17	#
.L70:
# distances_unr8.c:144:     #pragma omp critical
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
# distances_unr8.c:21:   FILE *file = fopen(filename, "r");
	leaq	.LC3(%rip), %rsi	#, tmp99
# distances_unr8.c:20: int read_data(const char *filename, Point *points) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# distances_unr8.c:23:   int count = 0;
	xorl	%ebx, %ebx	# <retval>
# distances_unr8.c:20: int read_data(const char *filename, Point *points) {
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# distances_unr8.c:20: int read_data(const char *filename, Point *points) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	movq	%rax, 24(%rsp)	# tmp128, D.6607
	xorl	%eax, %eax	# tmp128
	leaq	20(%rsp), %r15	#, tmp120
	leaq	16(%rsp), %r14	#, tmp119
# distances_unr8.c:21:   FILE *file = fopen(filename, "r");
	call	fopen@PLT	#
	leaq	12(%rsp), %r13	#, tmp122
	movq	%rax, %rbp	# tmp126, file
# distances_unr8.c:24:   while (fscanf(file, "%f %f %f", &x, &y, &z) == 3) {
	jmp	.L72	#
	.p2align 4,,10
	.p2align 3
.L73:
# distances_unr8.c:26:     points[count].x = (short int)(x * SCALE_FACTOR);
	movss	12(%rsp), %xmm1	# x, tmp101
# distances_unr8.c:29:     count++;
	addl	$1, %ebx	#, <retval>
	addq	$6, %r12	#, ivtmp.90
# distances_unr8.c:26:     points[count].x = (short int)(x * SCALE_FACTOR);
	mulss	%xmm0, %xmm1	# tmp123, tmp101
# distances_unr8.c:26:     points[count].x = (short int)(x * SCALE_FACTOR);
	cvttss2sil	%xmm1, %eax	# tmp101, tmp104
# distances_unr8.c:27:     points[count].y = (short int)(y * SCALE_FACTOR);
	movss	16(%rsp), %xmm1	# y, tmp105
	mulss	%xmm0, %xmm1	# tmp123, tmp105
# distances_unr8.c:26:     points[count].x = (short int)(x * SCALE_FACTOR);
	movw	%ax, -6(%r12)	# tmp104, MEM[(short int *)_35]
# distances_unr8.c:27:     points[count].y = (short int)(y * SCALE_FACTOR);
	cvttss2sil	%xmm1, %eax	# tmp105, tmp108
# distances_unr8.c:28:     points[count].z = (short int)(z * SCALE_FACTOR);
	movss	20(%rsp), %xmm1	# z, tmp109
	mulss	%xmm0, %xmm1	# tmp123, tmp109
# distances_unr8.c:27:     points[count].y = (short int)(y * SCALE_FACTOR);
	movw	%ax, -4(%r12)	# tmp108, MEM[(short int *)_35 + 2B]
# distances_unr8.c:28:     points[count].z = (short int)(z * SCALE_FACTOR);
	cvttss2sil	%xmm1, %eax	# tmp109, tmp112
	movw	%ax, -2(%r12)	# tmp112, MEM[(short int *)_35 + 4B]
.L72:
# distances_unr8.c:24:   while (fscanf(file, "%f %f %f", &x, &y, &z) == 3) {
	xorl	%eax, %eax	#
	movq	%r15, %r8	# tmp120,
	movq	%r14, %rcx	# tmp119,
	movq	%r13, %rdx	# tmp122,
	leaq	.LC4(%rip), %rsi	#,
	movq	%rbp, %rdi	# file,
	call	__isoc99_fscanf@PLT	#
# distances_unr8.c:24:   while (fscanf(file, "%f %f %f", &x, &y, &z) == 3) {
	movss	.LC1(%rip), %xmm0	#, tmp123
	cmpl	$3, %eax	#, tmp127
	je	.L73	#,
# distances_unr8.c:31:   fclose(file);
	movq	%rbp, %rdi	# file,
	call	fclose@PLT	#
# distances_unr8.c:33: }
	movq	24(%rsp), %rax	# D.6607, tmp129
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp129
	jne	.L76	#,
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
.L76:
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
# distances_unr8.c:37:   fseek(file, 0, SEEK_END);
	movl	$2, %edx	#,
# distances_unr8.c:35: int get_lines(FILE *file) {
	movq	%rdi, %rbx	# tmp94, file
# distances_unr8.c:37:   fseek(file, 0, SEEK_END);
	xorl	%esi, %esi	#
	call	fseek@PLT	#
# distances_unr8.c:38:   int size = ftell(file);
	movq	%rbx, %rdi	# file,
	call	ftell@PLT	#
# distances_unr8.c:41: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# distances_unr8.c:38:   int size = ftell(file);
	movq	%rax, %rdx	# tmp95, _1
# distances_unr8.c:39:   int n_lines = size / chars_per_line;
	cltq
	imulq	$-1307163959, %rax, %rax	#, _1, tmp89
	shrq	$32, %rax	#, tmp90
	addl	%edx, %eax	# _1, tmp91
	sarl	$31, %edx	#, tmp93
	sarl	$4, %eax	#, tmp92
	subl	%edx, %eax	# tmp93, n_lines
# distances_unr8.c:41: }
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
# distances_unr8.c:43: void print_result(int *distance_count) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# distances_unr8.c:43: void print_result(int *distance_count) {
	xorl	%ebx, %ebx	# ivtmp.99
	.p2align 4,,10
	.p2align 3
.L81:
# distances_unr8.c:45:     if (distance_count[i] > 0) {
	movl	(%r12,%rbx,4), %edx	# MEM[(int *)distance_count_14(D) + ivtmp.99_12 * 4], _4
# distances_unr8.c:45:     if (distance_count[i] > 0) {
	testl	%edx, %edx	# _4
	jle	.L80	#,
# distances_unr8.c:46:         printf("%05.2f %d\n", i / (float)PRECISION, distance_count[i]);
	movswl	%bx, %eax	# ivtmp.99, ivtmp.99
	pxor	%xmm0, %xmm0	# tmp89
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	%rbp, %rsi	# tmp96,
	movl	$2, %edi	#,
# distances_unr8.c:46:         printf("%05.2f %d\n", i / (float)PRECISION, distance_count[i]);
	cvtsi2ssl	%eax, %xmm0	# ivtmp.99, tmp89
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# distances_unr8.c:46:         printf("%05.2f %d\n", i / (float)PRECISION, distance_count[i]);
	divss	.LC2(%rip), %xmm0	#, tmp91
# distances_unr8.c:46:         printf("%05.2f %d\n", i / (float)PRECISION, distance_count[i]);
	cvtss2sd	%xmm0, %xmm0	# tmp91, tmp93
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
.L80:
# distances_unr8.c:44:   for (short int i = 0; i < N_BINS; i++) {
	addq	$1, %rbx	#, ivtmp.99
	cmpq	$3465, %rbx	#, ivtmp.99
	jne	.L81	#,
# distances_unr8.c:49: }
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
# distances_unr8.c:53:   num_threads = atoi(argv[1] + 2);
	movq	8(%rsi), %rdi	# MEM[(char * *)argv_3(D) + 8B], MEM[(char * *)argv_3(D) + 8B]
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	xorl	%esi, %esi	#
# distances_unr8.c:53:   num_threads = atoi(argv[1] + 2);
	addq	$2, %rdi	#, tmp98
# distances_unr8.c:51: int main(int argc, char *argv[]) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp120
	movq	%rax, 6013928(%rsp)	# tmp120, D.6631
	xorl	%eax, %eax	# tmp120
	leaq	48(%rsp), %rbx	#, tmp97
	leaq	13920(%rsp), %rbp	#, tmp96
	movq	%rbx, %xmm1	# tmp97, tmp97
	movq	%rbp, %xmm0	# tmp96, tmp95
	punpcklqdq	%xmm1, %xmm0	# tmp97, tmp95
	movaps	%xmm0, (%rsp)	# tmp95, %sfp
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	call	strtol@PLT	#
# distances_unr8.c:54:   omp_set_num_threads(num_threads);
	movl	%eax, %edi	# tmp118, _19
	call	omp_set_num_threads@PLT	#
# distances_unr8.c:56:   int global_distance_count[N_BINS] = {0};
	movl	$13860, %edx	#,
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# tmp97,
	call	memset@PLT	#
# distances_unr8.c:57:   int num_points = read_data("cells", points);
	movq	%rbp, %rsi	# tmp96,
	leaq	.LC6(%rip), %rdi	#, tmp106
	call	read_data	#
# distances_unr8.c:60:   #pragma omp parallel
	movdqa	(%rsp), %xmm0	# %sfp, tmp95
	leaq	16(%rsp), %rsi	#, tmp112
	leaq	main._omp_fn.0(%rip), %rdi	#, tmp113
# distances_unr8.c:58:   int remainder = num_points % UNROLL_FACTOR;
	movl	%eax, %ecx	# num_points, tmp107
# distances_unr8.c:60:   #pragma omp parallel
	movl	%eax, 32(%rsp)	# num_points, .omp_data_o.7.num_points
# distances_unr8.c:58:   int remainder = num_points % UNROLL_FACTOR;
	sarl	$31, %ecx	#, tmp107
# distances_unr8.c:60:   #pragma omp parallel
	movaps	%xmm0, 16(%rsp)	# tmp95, MEM <vector(2) long unsigned int> [(void *)&.omp_data_o.7]
# distances_unr8.c:58:   int remainder = num_points % UNROLL_FACTOR;
	shrl	$29, %ecx	#, tmp108
	leal	(%rax,%rcx), %edx	#, tmp109
	andl	$7, %edx	#, tmp110
	subl	%ecx, %edx	# tmp108, remainder
	xorl	%ecx, %ecx	#
# distances_unr8.c:60:   #pragma omp parallel
	movl	%edx, 36(%rsp)	# remainder, .omp_data_o.7.remainder
	xorl	%edx, %edx	#
	call	GOMP_parallel@PLT	#
# distances_unr8.c:152:   print_result(global_distance_count);
	movq	%rbx, %rdi	# tmp97,
	call	print_result	#
# distances_unr8.c:154: }
	movq	6013928(%rsp), %rax	# D.6631, tmp121
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	jne	.L87	#,
	addq	$6013944, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L87:
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
