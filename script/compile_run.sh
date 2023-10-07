#!/bin/bash
# Program: For auto compile and run different programs

filetype=$(find . -type f -name "${1}*" | cut -d '.' -f 3)

if [ ${filetype} == 'c' ]; then
	gcc \-o a ${1}.c
elif [ ${filetype} == 'cpp' ]; then
	g++ \-o a ${1}.cpp
fi

if [ $? -eq 0 ]; then
	printf "Compile finished and run\n"
	printf "Enter your test data: \n"
	./a
elif [ $? -ne 0 ]; then
	printf "Something error \n"
fi
