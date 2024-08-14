#!/bin/bash


 
[ $# -eq 0 ] && exit 1
 
write(){

FILE="$1"
if [ -w "$FILE" ] 
then
   echo "Writable"
else
   echo "Not writable"
fi
}

write "script.sh"