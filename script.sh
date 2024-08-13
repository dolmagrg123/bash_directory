#!/bin/bash

dir="./backup"

if [ -d $dir ]; then
    echo "The directory exists"
else
    mkdir $dir
    echo "Directory backup Created"
fi