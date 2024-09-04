#include <stdio.h>
#include <stdint.h>

int main(void) {
  // fish: Job 1, './stack_allocation' terminated by signal SIGSEGV (Address boundary error)
  // size of 32-bit int: 4 byte
  // Thus the stack size is smaller than 4 * 2500000 = 10 mb, but larger than 4 * 2000000 = 8 mb
  int size = 2500000;
  int as[size];

  for (size_t ix = 0; ix < size; ++ix)
    as[ix] = 0;
printf("%d\n", as[0]);
}
