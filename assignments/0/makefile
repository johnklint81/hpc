.PHONY : all
all : stack_allocation heap_allocation contiguous_memory fragmented_memory \
write_matrix read_matrix parsing

stack_allocation : stack_allocation.c
	gcc -o stack_allocation stack_allocation.c

heap_allocation : heap_allocation.c
	gcc -o heap_allocation heap_allocation.c

contiguous_memory : contiguous_memory.c
	gcc -o contiguous_memory contiguous_memory.c

fragmented_memory : fragmented_memory.c
	gcc -o fragmented_memory fragmented_memory.c

write_matrix : write_matrix.c
	gcc -o write_matrix write_matrix.c

read_matrix : read_matrix.c
	gcc -o read_matrix read_matrix.c

parsing : printargs.c
	gcc -o printargs printargs.c

