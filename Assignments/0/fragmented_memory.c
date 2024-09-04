#include <stdio.h>
#include <stdlib.h>

int main(void) {
  int size = 10;
  int **as = (int**) malloc(sizeof(int*) * size);  // Declare an array of pointers to pointers
  for (size_t ix = 0; ix < size; ++ix)
    as[ix] = (int*) malloc(sizeof(int) * size);  // Assign a pointer in each position of the as array. These pointers are not guarranteed to
                                                 // point to contiguous memory. And most likely do not!
  for (size_t ix = 0; ix < size; ++ix)
    for (size_t jx = 0; jx < size; ++jx)
      as[ix][jx] = 0;  // Loop through the array and assign 0 everywhere.
  printf("%d\n", as[0][0]);
  for (size_t ix = 0; ix < size; ++ix) 
    free(as[ix]);  // Loop through the array of pointers to pointers and free the memory that respective pointer points at
  free(as);  // Free the array of pointers to pointers.
}
