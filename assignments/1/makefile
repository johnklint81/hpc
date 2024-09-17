.PHONY : all
all : naive_benchmarking valgrind gdb

naive_benchmarking : naive_benchmarking.c
	gcc -S -fverbose-asm naive_benchmarking.c

valgrind : valgrind.c
	gcc -g -O0 -o valgrind valgrind.c 
gdb : gdb.c
	gcc -g -O0 -o gdb gdb.c
