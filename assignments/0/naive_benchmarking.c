#include <stdio.h>
#include <time.h>

int main(int) {
  clock_t start = clock();
  clock_t end;
  long int sum;
  float seconds;

  const int iterations = 1E9;

  for (long int ix = 0; ix < iterations; ++ix) {
    sum += ix;
  }
  end = clock();
  seconds = (float)(end - start) / CLOCKS_PER_SEC;
  printf("The sum is %ld.\n", sum);
  printf("The program took %f seconds to run.\n", seconds);
}

