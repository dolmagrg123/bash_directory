#!/bin/bash
exists(){
FILE="$1"
if [ -e "$FILE" ] 
then
   echo "File Exists"
else
   echo "File Does not Exists"
   exit 1
fi
}
write(){

FILE="$1"
if [ -w "$FILE" ] 
then
   echo "Writable"
else
   echo "Not writable"
fi
}

read(){

FILE="$1"
if [ -r "$FILE" ] 
then
   echo "Readable"
else
   echo "Not Readble"
fi
}

execute(){

FILE="$1"
if [ -x "$FILE" ] 
then
   echo "Executable"
else
   echo "Not Executable"
fi

}

exist "script.sh"
write "script.sh"
read "script.sh"
execute "script.sh"