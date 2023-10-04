#!/bin/bash
# Program: Make git push quickly

git add --all
read -p "Please enter the commit message: " message
git commit -m ""${message}""
git push origin master
