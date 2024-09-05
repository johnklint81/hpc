#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {
  // Some simple guards
  if (argc > 3) {
    printf("Too many arguments.\n");
    return -1;
  }
  if (argc < 3) {
    printf("Too few arguments.\n");
    return -1;
  }
  // Declare variables to store the numerical values of the first and second args
  int num1;
  int num2;
  // Parsing:
  //
  // Point to the third position of the second and third strings in argv[] to skip '-a' or '-b',
  // then sscan takes the remainder and converts it into an int. I think it then tells num to point to it?
  // Which is strange, because int is a primitive type. Please explain this :)
  //
  // Questions: Why does it has to be &num and not num
  sscanf(&argv[1][2], "%d", &num1);
  sscanf(&argv[2][2], "%d", &num2);

  // Control flow
  if (argv[1][1] == 'a') {
    printf("A is %d and B is %d\n", num1, num2);
  } 
  else if (argv[1][1] == 'b') {
    printf("A is %d and B is %d\n", num2, num1);
  }
  // Guard
  else {
    printf("Invalid arguments.");
  }
  //printf("The product is %f\n", A * B);

}

