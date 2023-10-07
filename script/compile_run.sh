#!/bin/bash
# Program: For auto compile and run different programs

printf 'Compile and run option \n'
printf '(1) c \n'
printf '(2) cpp \n'
printf '(3) python \n'
printf '(4) rust \n'
read -p 'Enter your filename: ' filename
read -p 'Enter your option: ' option

if [ ${option} -eq 1 ]; then
	gcc \-o a ${filename}.c
elif [ ${option} -eq 2 ]; then
	g++ \-o a ${filename}.cpp
fi

if [ $? -eq 0 ]; then
	printf 'Compile finished\nPlease enter your test case: \n'
	./a
elif [ $? -ne 0 ]; then
	printf 'Something error !\n'
fi

