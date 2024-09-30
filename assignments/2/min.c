#include <stdio.h>
#include <stdlib.h>
#include <math.h>


float parse_str(const char *str_ptr) {
  float number = 0;
  float fraction = 0.1;
  signed int parity = 1; 
  // Deal with parity 
  if (*str_ptr == '-') {
    parity = -1;
    str_ptr++;
  }
  else if (*str_ptr == '+') {
    str_ptr++;
  }
  // Parse the integer part
  while (*str_ptr >= '0' && *str_ptr <= '9') {
    number = number * 10 + (*str_ptr - '0');
    str_ptr++;
  }
  // Parse the fractional part
  if (*str_ptr == '.') {
    str_ptr++;
    while (*str_ptr >= '0' && *str_ptr <= '9') {
      number += fraction * (*str_ptr - '0');
      fraction /= 10;
      str_ptr++;
    }
  }
  number *= parity;
  return number;
}


float get_distance(const int x1, const int y1, const int z1,
                   const int x2, const int y2, const int z2) {
  float distance = sqrt(pow((x1 - x2), 2) + 
                        pow((y1 - y2), 2) + 
                        pow((z1 - z2), 2));
  return distance;
}


float* parse_ln(const char *ln_ptr) {
  int buffer = 3;
  int offset = 0;
  int i = 0;
  float *numbers = malloc(buffer * sizeof(float));

  while (ln_ptr[offset] != '\0' && ln_ptr[offset] != EOF) {
    numbers[i] = parse_str(ln_ptr + offset);
    offset += 8;
    i++;
  }
  return numbers;
}

int factorial(int n) {
  if (n < 0) {
    return 0;
  }
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}


int main(void) {
  char *line = NULL;
  size_t len = 0;
  ssize_t nread;
  float flt;
  size_t chunk = 10;
  factorial(3);
  float *distances = malloc(chunk * sizeof(float));
  float *occurrences = malloc(chunk * sizeof(int));
  float **numberChunk = malloc(chunk * sizeof(float*));
  const char *filename = "sample.txt";
  FILE *file = fopen(filename, "r");
  int i = 0;

  while ((nread = getline(&line, &len, file)) != -1) {
    if (i >= chunk) {
      chunk *= 2;
      float **temp = realloc(numberChunk, chunk * sizeof(float*));
      numberChunk = temp;
    }
    
    int num_numbers = 0;
    numberChunk[i] = parse_ln(line);
    i++;
  }
  for (int m = 0; m < i; m++) {
    for (int n = m + 1; n < i; n++) {
//      distances[]
//      occurrences[]
    }
  } 

  fclose(file);
  free(line);
  for (int j = 0; j < i; j++) {
    printf("Line %d: ", j);
    for (int k = 0; k < 3; k++) {
      printf("%2.3f ", numberChunk[j][k]); 
    }
    printf("\n");
    free(numberChunk[j]);
  }
}

