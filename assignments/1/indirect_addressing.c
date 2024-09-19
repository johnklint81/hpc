#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void) {
 
  struct timespec bench_start_time, bench_stop_time;
  double bench_diff_time;
  clock_gettime(CLOCK_MONOTONIC, &bench_start_time);
  int iterations = 1000;
  srand(time(NULL));
  size_t size = 1000000;
  double *p = malloc(size * sizeof(double));
  double *y = malloc(size * sizeof(double));
  double *x = malloc(size * sizeof(double));
  double a = 2.718;

  for (int i = 0; i < size; i++) {
    x[i] = (double)rand() / RAND_MAX;
  }

  for (int i = 0; i < iterations; i++) {
    for ( size_t ix = 0; ix < size; ++ix  )
      p[ix] = ix;
    for ( size_t kx = 0; kx < size; ++kx ) {
      size_t jx = p[kx];
      y[jx] += a * x[jx];
    }
  }
  int r = rand() % (size + 1);

  clock_gettime(CLOCK_MONOTONIC, &bench_stop_time);
  bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
    (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
  printf("Random element %d of y: %f\n", r, y[r]);
  printf("Linear initialisation: %f\n", bench_diff_time);

  clock_gettime(CLOCK_MONOTONIC, &bench_start_time);
  size_t size_jump = 1000;
  for (int i = 0; i < iterations; i++) {
    for ( size_t jx = 0, kx = 0; jx < size_jump; ++jx)
      for ( size_t ix = jx; ix < size; ix += size_jump, ++kx)
        p[ix] = kx;

    for ( size_t kx = 0; kx < size; ++kx ) {
      size_t jx = p[kx];
      y[jx] += a * x[jx];
    }
  }
  r = rand() % (size + 1);

  clock_gettime(CLOCK_MONOTONIC, &bench_stop_time);
  bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) * 1000000 +
    (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) / 1E6;
  printf("Random element %d of y: %f\n", r, y[r]);
  printf("Sparse initialisation: %f\n", bench_diff_time);
  free(p);
  free(x);
  free(y);
}

// O0 flag: linear init takes 4.4 secs and sparse init takes 11.2 secs
// O2 flag: linear init takes 1.7 secs and sparse init takes 6.0 secs
