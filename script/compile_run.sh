#!/bin/bash
# Program: For compiling and run different programs

filetype=$(find . -type f -name "${1}*" | cut -d '.' -f 3)

interpreter=0

if [[ "${filetype}" == "cpp" ]]; then
	g++ -o "${1}" "${1}.${filetype}"
elif [[ "${filetype}" == "c" ]]; then
	gcc -o "${1}" "${1}.${filetype}"
elif [[ "${filetype}" == "rs" ]]; then
	rustc "${1}.${filetype}"
elif [[ "${filetype}" == "py" ]]; then
	python "${1}.${filetype}"
	interpreter=1
fi

if [[ ${interpreter} -eq 1 ]]; then
	printf "Compile finished and run\n"
	printf "Enter your test data: \n\n"
elif [[ ${interpreter} -eq 0 ]]; then
	printf "Compile finished and run\n"
	printf "Enter your test data: \n\n"
	./"${1}"
elif [[ $? -ne 0 ]]; then
	printf "Something error \n"
fi
