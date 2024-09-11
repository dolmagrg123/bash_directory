#!/bin/bash

# ls -al 1>file1.txt 2>file2.txt

car=('BMW' 'TOYOTA' 'HONDA')

unset car[2]

car[2]='MERCEDES'
car[3]='AUDI'
echo "${car[@]}"

echo "${#car[@]}"