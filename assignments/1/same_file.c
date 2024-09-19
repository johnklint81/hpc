#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Runtime: 2.089s. This is faster than inline manually, I wonder why?
// ChatGPT claims this is because the compiler can optimize an inlined function
// more aggressively than manually pasted code.

void mul_cpx(double *a_re, double *a_im, double *b_re,
  double *b_im, double *c_re, double *c_im) {
  *a_re = *b_re * *c_re - *b_im * *c_im;
  *a_im = *b_re * *c_im + *b_im * *c_re;
}

int main(void) {
  struct timespec bench_start_time, bench_stop_time;
  double bench_diff_time;
  clock_gettime(CLOCK_MONOTONIC, &bench_start_time);
  int len = 30000;
  int iterations = 200000;
  srand(time(NULL));

  double *as_re = malloc(len * sizeof(double));
  double *bs_re = malloc(len * sizeof(double));
  double *cs_re = malloc(len * sizeof(double));

  double *as_im = malloc(len * sizeof(double));
  double *bs_im = malloc(len * sizeof(double));
  double *cs_im = malloc(len * sizeof(double));

  for (int i = 0; i < len; i++) {
    bs_re[i] = (double)rand() / RAND_MAX;
    cs_re[i] = (double)rand() / RAND_MAX;

    bs_im[i] = (double)rand() / RAND_MAX;
    cs_im[i] = (double)rand() / RAND_MAX;

  }
  for (int j = 0; j < iterations; j++) {
    for (int i = 0; i < len; i++) {
      mul_cpx(&as_re[i], &as_im[i], &bs_re[i], &bs_re[i], &cs_re[i], &cs_im[i]);
    }
  }
  int r = rand() % (len + 1);

  clock_gettime(CLOCK_MONOTONIC, &bench_stop_time);
  bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
    (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
  printf("Random element of as_re and as_im are: (%f, %f)\n", as_re[r], as_im[r]);
  printf("Function in same file took %f seconds to run.\n", bench_diff_time);
  free(as_re);
  free(bs_re);
  free(cs_re);
  free(as_im);
  free(bs_im);
  free(cs_im);
}
