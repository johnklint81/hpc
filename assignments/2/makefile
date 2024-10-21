.PHONY : all
all : distances

distances : distances.c
	gcc -O2 -fopenmp -o distances distances.c -lm

clean:
	rm -f *.o distances
