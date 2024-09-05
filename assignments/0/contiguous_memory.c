#include <stdio.h>
#include <stdlib.h>

int main(void) {
  int size = 10;  // Define size
  int *asentries = (int*) malloc(sizeof(int) * size*size);  // Declare a pointer to the start of a reserved block of contiguous memory of int*size^2
  int **as = (int**) malloc(sizeof(int*) * size);  // Declare a pointer to the (uninitialised) asentries array of pointers
  for (size_t ix=0, jx=0; ix<size; ++ix, jx+=size)
    as[ix] = asentries + jx;  // Insert the pointer or "address to the memory block" in as, then increment by the size of the "rows" in the "matrix",
                              // and add to the next position in as, etc. 
  for (size_t ix = 0; ix < size; ++ix)
    for (size_t jx = 0; jx < size; ++jx)
      as[ix][jx] = 0;  // Loop through the multi-dimensional array and assign value 0 everywhere. Syntactic sugar for longer one-dimensional array.
  printf("%d\n", as[0][0]);
  free(as);  // Free memory
  free(asentries);
}
