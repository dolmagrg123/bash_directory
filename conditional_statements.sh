#!/bin/bash

# count=10

# if [ $count -lt 9 ]
# then
#     echo "First Condition is true"

# elif (( $count == 10))
# then
#     echo "Second Condition is true"
# else
#     echo "Condition is not true"
# fi

age=10

if [ $age -gt 18 ] && [ $age -lt 14 ]
then 
    echo "Age is correct"
else
    echo " Age is not correct"
fi