#include <stdio.h>
#include <stdlib.h>

int main(void) {

  int size = 10;
  int as[size][size];
  FILE *file = fopen("matrix_file.dat", "wb");

  if (file == NULL) {
    printf("Error opening file.\n");
    return -1;
  }

  for (size_t ix = 0; ix < size; ++ix)
      for (size_t jx = 0; jx < size; ++jx)
        as[ix][jx] = ix * jx;
  fwrite((void*) as, sizeof(int), size*size, file);
  fclose(file);
  printf("Matrix created.\n");
}
