#include "different_file_mul.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Runtime: 7.641s. This is reasonable, given that there will be overhead when 
// each call to the function incurrs overhead.

void mul_cpx(double *a_re, double *a_im, double *b_re,
             double *b_im, double *c_re, double *c_im);

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
  clock_gettime(CLOCK_MONOTONIC, &bench_stop_time);
  bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
  (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
  printf("First element of as_re and as_im are: (%f, %f)\n", as_re[0], as_im[0]);
  printf("Function in another file took %f seconds to run.\n", bench_diff_time);
  free(as_re);
  free(bs_re);
  free(cs_re);
  free(as_im);
  free(bs_im);
  free(cs_im);
}
