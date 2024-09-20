#include <stdio.h>
#include <stdlib.h>

// valgrind --leak-check=yes ./valgrind

int main(void) {

  int *as = 0 ;
  // When I comment out as below, the code still runs and print the sum, how?
  //as = (int*)malloc(10*sizeof(int));
  int sum = 0;

  for (int ix = 0; ix < 10; ++ix) {
    as[ix] = ix;
  }
  for (int ix = 0; ix < 10; ++ix) {
    sum += as[ix];
  }
  printf("%d\n", sum);
  free(as);
}
