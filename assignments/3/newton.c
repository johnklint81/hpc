#include <stdio.h>
#include <stdlib.h>
#include <threads.h>
#include <string.h>
#include <stdbool.h>
#include <math.h>
#include <complex.h>

#define MAX_ITER 50

double complex newton(double complex x0, int degree) {
  double complex f = cpow(x0, degree) - 1;
  double complex fprime = degree * cpow(x0, degree - 1); 
  double complex x1 = x0 - f / fprime;
  return x1;
}

int main(int argc, char *argv[]) {
  // Parse arguments
  int nthreads;
  int nlines;
  int degree = atoi(argv[argc - 1]);
  for (int i = 1; i < argc - 1; i++) {
    char *carg = argv[i];
    if (carg[0] == '-' && carg[1] == 't') {
      nthreads = atoi(carg + 2);
    }
    else if (carg[0] == '-' && carg[1] == 'l') {
      nlines = atoi(carg + 2);
    }
    else {
      printf("Unknown argument: %s\n", carg);
    }
  }
  bool iterating = true;
  int iter = 0;
  double complex xnew;
  double complex xold = -3.0 + 1.0 * I;


  while (iterating && iter < MAX_ITER) {
    xnew = newton(xold, degree);
    if (cabs(xnew - xold) < 0.001) {
      iterating = false;
    }

  printf("%.17f + %.17fi\n", creal(xold), cimag(xold));
  xold = xnew;
  printf("%.17f + %.17fi\n", creal(xnew), cimag(xnew));

  iter++;
  }
  if (iter > MAX_ITER) {
    printf("Max iterations reached without convergence.\n");
  }
  return 0;
}
