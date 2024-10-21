.PHONY : all
all : newton

newton : newton.c
	gcc -O2 -fopenmp -o newton newton.c -lm

clean:
	rm -f *.o newton
