.PHONY : all
all : naive_benchmarking valgrind gdb same_file inline_manually different_file

naive_benchmarking : naive_benchmarking.c
	gcc -S -fverbose-asm naive_benchmarking.c

valgrind : valgrind.c
	gcc -g -O0 -o valgrind valgrind.c 

gdb : gdb.c
	gcc -g -O0 -o gdb gdb.c

same_file : same_file.c
	gcc -g -O2 -o same_file same_file.c

inline_manually : inline_manually.c
	gcc -g -O2 -o inline_manually inline_manually.c

# Build different_file executable from object files
different_file: different_file.o different_file_mul.o
	gcc -g -O2 -o different_file different_file.o different_file_mul.o

# Compile different_file.c into object file
different_file.o: different_file.c different_file_mul.h
	gcc -g -O2 -c different_file.c

# Compile different_file_mul.c into object file
different_file_mul.o: different_file_mul.c different_file_mul.h
	gcc -g -O2 -c different_file_mul.c


