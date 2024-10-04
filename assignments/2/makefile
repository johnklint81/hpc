.PHONY : all
all : distances distances_unr

distances: distances.c
	gcc -O2 -fopenmp -o distances distances.c -lm

distances_unr : distances_unr.c
	gcc -O2 -fopenmp -o distances_unr distances_unr.c -lm

clean:
	rm -f *.o distances distances_unr
