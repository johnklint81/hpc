#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void row_sums(
  double * sums,
  const double ** matrix,
  size_t nrs,
  size_t ncs)
{
  for ( size_t ix = 0; ix < nrs; ++ix ) {
    double sum = 0.;
    for ( size_t jx = 0; jx < ncs; ++jx )
      sum += matrix[ix][jx];
    sums[ix] = sum;
  }
}

void col_sums(
  double * sums,
  const double ** matrix,
  size_t nrs,
  size_t ncs)
{
  for ( size_t ix = 0; ix < nrs; ++ix ) {
    double sum = 0.;
    for ( size_t jx = 0; jx < ncs; ++jx )
      sum += matrix[ix][jx];
    sums[ix] = sum;
  }
}

int main(void) {
  struct timespec bench_start_time, bench_stop_time;
  double bench_diff_time;
  const size_t size = 1000;
  const size_t iterations = 5000;
  double **matrix = malloc(size * sizeof(double*));
  double *rowSums = malloc(size * sizeof(double));
  double *colSums = malloc(size * sizeof(double));

  double r = (double)rand() / RAND_MAX * size;
 
  for (int i = 0; i < size; i++) {
    matrix[i] = malloc(size * sizeof(double));
    for (int j = 0; j < size; j++) {
      matrix[i][j] = r;
      r = (double)rand() / RAND_MAX * size;
    }
  }
  clock_gettime(CLOCK_MONOTONIC, &bench_start_time);
  for (int i = 0; i < iterations; i++) {
    row_sums(rowSums, (const double**)matrix, size, size);
  }
  clock_gettime(CLOCK_MONOTONIC, &bench_stop_time);

  int r0 = rand() % (size + 1);

  bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
  (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
  printf("Random element of rowSums: %f\n", rowSums[r0]);
  printf("The rowsum took %f seconds to compute.\n", bench_diff_time);

  clock_gettime(CLOCK_MONOTONIC, &bench_start_time);
  for (int i = 0; i < iterations; i++) {
    row_sums(colSums, (const double**)matrix, size, size);
  }
  clock_gettime(CLOCK_MONOTONIC, &bench_stop_time);

  r0 = rand() % (size + 1);
  bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
  (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
  printf("Random element of colSums: %f\n", colSums[r0]);
  printf("The colsum took %f seconds to run.\n", bench_diff_time);

}
