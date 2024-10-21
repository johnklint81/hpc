#include <stdio.h>
#include <stdlib.h>
#include <complex.h>
#include <math.h>
#include <stdbool.h>

#define MAX_ITER 50

double complex newton(double complex x0, int degree) {
    double complex f = cpow(x0, degree) - 1; // f(x) = x^degree - 1
    double complex fprime = degree * cpow(x0, degree - 1); // f'(x)

    // Print debug information
    printf("f(x) = %.17f + %.17fi, f'(x) = %.17f + %.17fi\n", creal(f), cimag(f), creal(fprime), cimag(fprime));

    double complex x1 = x0 - f / fprime; // Newton's update
    return x1;
}

int main(int argc, char *argv[]) {
    int degree = atoi(argv[argc - 1]);
    double complex xold = -3.0 + 1.0 * I; // Initial guess

    bool iterating = true;
    int iter = 0;
    double complex xnew;

    while (iterating && iter < MAX_ITER) {
        xnew = newton(xold, degree);

        printf("Iteration %d: %.17f + %.17fi\n", iter, creal(xold), cimag(xold));

        if (cabs(xnew - xold) < 0.001) {
            iterating = false;
        }

        xold = xnew; // Update xold for the next iteration
        printf("Next: %.17f + %.17fi\n", creal(xnew), cimag(xnew));

        iter++;
    }

    if (iter >= MAX_ITER) {
        printf("Max iterations reached without convergence.\n");
    } else {
        printf("Converged to: %.17f + %.17fi\n", creal(xnew), cimag(xnew));
    }

    return 0;
}

