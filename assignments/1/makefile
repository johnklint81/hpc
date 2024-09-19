.PHONY : all
all : naive_benchmarking valgrind gdb same_file inline_manually different_file \
	locality locality_reimplement data_dependency indirect_addressing read_write

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

locality : locality.c
	gcc -g -O2 -o locality locality.c

locality_reimplement : locality_reimplement.c
	gcc -g -O2 -o locality_reimplement locality_reimplement.c

data_dependency : data_dependency.c
	gcc -g -O0 -o data_dependencyO0 data_dependency.c
	gcc -g -O2 -o data_dependencyO2 data_dependency.c

indirect_addressing : indirect_addressing.c
	gcc -g -O0 -o indirect_addressingO0 indirect_addressing.c
	gcc -g -O2 -o indirect_addressingO2 indirect_addressing.c

read_write : read_write.c
	gcc -g -O0 -o read_write read_write.c
