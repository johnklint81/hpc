.PHONY : all
all : first_executable second_executable control_flow

first_executable : first_c_program.c
	echo "build first_executable"
	gcc -o first_executable first_c_program.c
second_executable : first_c_program.c
	gcc -o second_executable first_c_program.c
control_flow : control_flow.c
	gcc -o control_flow control_flow.c
