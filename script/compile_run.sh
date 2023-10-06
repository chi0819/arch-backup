#!/bin/bash
# Program: For auto compile and run different programs

if [ ${2} == 'c' ]; then
	gcc \-o a ${1}.c
elif [ ${2} == 'cpp' ]; then
	g++ \-o a ${1}.cpp
fi

printf 'Compile finished\nPlease enter your test case: \n'
./a
