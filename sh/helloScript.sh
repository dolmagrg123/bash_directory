#!/bin/bash

: '
print and output to hello.txt
Hello Bash Script
'
echo "Hello Bash Script!!" >> hello.txt

cat << helloWorld
This is line in a file
second line
helloWorld