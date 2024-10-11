.PHONY : all
all : distances distances_unr distances_sq distances_unr8

distances: distances.c
	gcc -O2 -fopenmp -o distances distances.c -lm

distances_unr : distances_unr.c
	gcc -O2 -fopenmp -o distances_unr distances_unr.c -lm

distances_sq : distances_sq.c
	gcc -O2 -fopenmp -o distances_sq distances_sq.c -lm

distances_unr8 : distances_unr8.c
	gcc -O2 -fopenmp -o distances_unr8 distances_unr8.c -lm

clean:
	rm -f *.o distances distances_unr distances_unr8
