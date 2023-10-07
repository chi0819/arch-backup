#!/bin/bash
# Program: For auto compile and run different programs

filetype=$(find . -type f -name "${1}*" | cut -d '.' -f 3)

interpreter=0

if [ ${filetype} == 'c' ]; then
	gcc \-o a ${1}.c
elif [ ${filetype} == 'cpp' ]; then
	g++ \-o a ${1}.cpp
elif [ ${filetype} == 'rs' ]; then
	rustc ${1}.rs
elif [ ${filetype} == 'py' ]; then
	python ${1}.py
	interpreter=1
fi

if [ ${interpreter} -eq 1 ]; then
	printf "Compile finished and run\n"
	printf "Enter your test data: \n\n"
elif [ $? -eq 0 ]; then
	printf "Compile finished and run\n"
	printf "Enter your test data: \n\n"
	./a
elif [ $? -ne 0 ]; then
	printf "Something error \n"
fi
