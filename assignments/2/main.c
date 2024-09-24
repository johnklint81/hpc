#include <stdio.h>
#include <stdlib.h>

float parse_str(const char *str_ptr) {
  float number = 0;
  float fraction = 0.1;
  signed char parity = 1;
  
  //printf("%c\n", *str_ptr);
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
  //printf("%f", number);
  return number;
}


int main(void) {
  char str[256];
  float flt;
  const char *filename = "sample.txt";
  FILE *file = fopen(filename, "r");
  while ((*str = fgetc(file)) != EOF) {
    putchar(*str);
  }
  fclose(file);

  //printf("%s", str);
  //printf("\n");
  
  flt = parse_str(str);
  //printf("%f", flt);
}
