#include <stdio.h>
#include <time.h>
#include <limits.h>

int main(int) {
  clock_t start = clock();
  clock_t end;
  long int sum;
  float seconds;
  // Needs long int, why? INT_MAX > iterations...
  const long int iterations = 1E9;
  //printf("%d\n", INT_MAX - iterations);

  for (long int ix = 0; ix < iterations; ++ix) {
    sum += ix;
  }
  end = clock();
  seconds = (float)(end - start) / CLOCKS_PER_SEC;
  printf("The sum is %ld.\n", sum);
  printf("The program took %f seconds to run.\n", seconds);
}

