#include <stdio.h>
#include <stdlib.h>

int main(void) {
  int size = 3000000;

  int *as = (int*) malloc(sizeof(int) * size);
  for (size_t ix = 0; ix < size; ++ix)
    as[ix] = 0;
printf("%d\n", as[0]);
free(as);
}

