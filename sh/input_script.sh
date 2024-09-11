#!/bin/bash

# # echo $0 $1 $2 $3

# args=("$@")

# # echo ${args[0]} ${args[1]} ${args[2]}

# echo $@

# echo $#

while read line
do
    echo "$line"
done < "${1:-/dev/stdin}" #give the filename as an argument in terminal

