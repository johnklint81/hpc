#include <stdio.h>
#include <stdbool.h>

int main(void) {
  int size = 10;
  bool eq = true;
  int as[size][size];
  FILE *file = fopen("matrix_file.dat", "rb");

  if (file == NULL) {
    printf("Error opening file.");
    return -1;
  }

  fread((void*) as, sizeof(int), size*size, file);
  printf("Matrix loaded from file.\n");
  for (size_t ix = 0; ix < size; ++ix)
    for (size_t jx = 0; jx < size; ++jx) {
      float as_ixjx = (float) as[ix][jx]; 
      if (!(as_ixjx == (float) ix * (float) jx)) {
        eq = false;
      }
      if (jx == size - 1) {
        printf("%i,\n", as[ix][jx]);
      }
      else {
        printf("%i, ", as[ix][jx]);
      }
    }
  fclose(file);
  if (eq == true) {
    printf("All entries equals ix*jx.\n");
  }
  else {
    printf("Entries not matching ix*jx.");
  }
}
