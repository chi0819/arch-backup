#!/bin/bash
# Program: For auto compile and run C++ program

g++ \-o a ${1}.cpp
printf 'Compile finished\nPlease enter your test case: \n'
./a
