#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void) {
  struct timespec bench_start_time, bench_stop_time;
  double bench_diff_time;
  int iterations = 1000;
  srand(time(NULL));
  int n = 1048575;
  int *data = malloc(n * sizeof(int));

  clock_gettime(CLOCK_MONOTONIC, &bench_start_time);
  FILE *file = fopen("data.bin", "wrb");
  for (int i = 0; i < n; i++) {
    fwrite(&i, sizeof(int), 1, file);
    fflush(file);
  }
  int i = 0;
  while (fread(&data[i], sizeof(int), 1, file) == 1) {
    i++;
  } 
  fclose(file);
  
  clock_gettime(CLOCK_MONOTONIC, &bench_stop_time);
  bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) 
    * 1000000 + (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) 
    / 1E6;
  printf("Writing and reading one item at a time: %f\n", bench_diff_time);

  clock_gettime(CLOCK_MONOTONIC, &bench_start_time);

  for (int i = 0; i < n; i++) {
    data[i] = i;
  }
  fwrite(&data, sizeof(int), sizeof(data), file);
  fread(&data, sizeof(int), n, file);
  clock_gettime(CLOCK_MONOTONIC, &bench_stop_time);
  bench_diff_time = (difftime(bench_stop_time.tv_sec, bench_start_time.tv_sec) 
    * 1000000 + (bench_stop_time.tv_nsec - bench_start_time.tv_nsec) / 1000) 
    / 1E6;
  printf("Writing and reading full array: %f\n", bench_diff_time);
}
