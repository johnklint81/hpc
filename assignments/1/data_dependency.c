#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void row_sums(
  double * sums,
  const double ** matrix,
  size_t nrs,
  size_t ncs) {
  for (size_t ix = 0; ix < nrs; ++ix) {
    double sum = 0.;
    for (size_t jx = 0; jx < ncs; ++jx)
      sum += matrix[ix][jx];
    sums[ix] = sum;
  }
}

void row_sums_unrolled2(
  double * sums,
  const double ** matrix,
  size_t nrs,
  size_t ncs) {
  for (size_t ix = 0; ix < nrs; ++ix) {
    double sum0 = 0.;
    double sum1 = 0.;
    for (size_t jx = 0; jx < ncs; jx += 2) {
      sum0 += matrix[ix][jx];
      sum1 += matrix[ix][jx+1];
    }
    sums[ix] = sum0 + sum1;
  }
}

void row_sums_unrolled4(
  double * sums,
  const double ** matrix,
  size_t nrs,
  size_t ncs) {
  for (size_t ix = 0; ix < nrs; ++ix) {
    double sum0 = 0.;
    double sum1 = 0.;
    double sum2 = 0.;
    double sum3 = 0.;
    for (size_t jx = 0; jx < ncs; jx += 4) {
      sum0 += matrix[ix][jx];
      sum1 += matrix[ix][jx+1];
      sum2 += matrix[ix][jx+2];
      sum3 += matrix[ix][jx+3];
    }
    sums[ix] = sum0 + sum1 + sum2 + sum3;
  }
}

void row_sums_unrolled4a(
  double * sums,
  const double ** matrix,
  size_t nrs,
  size_t ncs) {
  for (size_t ix = 0; ix < nrs; ++ix) {
    double sum[4] = {0., 0., 0., 0.};
    for (size_t jx = 0; jx < ncs; jx += 4) {
      sum[0] += matrix[ix][jx];
      sum[1] += matrix[ix][jx+1];
      sum[2] += matrix[ix][jx+2];
      sum[3] += matrix[ix][jx+3];
    }
    sums[ix] = sum[0] + sum[1] + sum[2] + sum[3];
  }
}



void row_sums_unrolled8(
  double * sums,
  const double ** matrix,
  size_t nrs,
  size_t ncs) {
  for (size_t ix = 0; ix < nrs; ++ix) {
    double sum0 = 0.;
    double sum1 = 0.;
    double sum2 = 0.;
    double sum3 = 0.;
    double sum4 = 0.;
    double sum5 = 0.;
    double sum6 = 0.;
    double sum7 = 0.;

    for (size_t jx = 0; jx < ncs; jx += 8) {
      sum0 += matrix[ix][jx];
      sum1 += matrix[ix][jx+1];
      sum2 += matrix[ix][jx+2];
      sum3 += matrix[ix][jx+3];

      sum4 += matrix[ix][jx+4];
      sum5 += matrix[ix][jx+5];
      sum6 += matrix[ix][jx+6];
      sum7 += matrix[ix][jx+7];
    }
    sums[ix] = sum0 + sum1 + sum2 + sum3 + sum4 + sum5 + sum6 + sum7;
  }
}


int main(void) {
  struct timespec bench_start_time, bench_stop_time;
  double bench_diff_time;
  clock_gettime(CLOCK_MONOTONIC, &bench_start_time);
  srand(time(NULL)); 
  size_t n = 1000;
  int iterations = 5000;
  double **matrix = malloc(n * sizeof(double*));
  double *sums = malloc(n * sizeof(double));

  for (int j = 0; j < n; j++) {
    matrix[j] = malloc(n * sizeof(double));
    for (int i = 0; i < n; i++) {
      double r = (double)rand() / RAND_MAX;
      matrix[j][i] = r;
    }
  }
  
  for (int i = 0; i < iterations; i++) {
    row_sums_unrolled4(sums, (const double**)matrix, n, n); 
  }

  clock_gettime(CLOCK_MONOTONIC, &bench_stop_time);

  bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
    (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
  
  int r = rand() % (n + 1);

  printf("Random element of sums: %f\n", sums[r]);
  printf("data_dependency took %f seconds to run.\n", bench_diff_time);
  for (int j = 0; j < n; j++) {
       free(matrix[j]);
  }
  free(matrix);

}


// row_sums_unrolled2 made the program roughly twice as fast!
// row_sums_unrolled4 made the program a little bit faster, larger effect for O2 flag
// row_sums_unrolled8 was even faster
// row_sums_unrolled_4a was slower then row_sums_unrolled4
