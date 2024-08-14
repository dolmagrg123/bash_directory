#!/bin/bash
#-w FILE : FILE exists and write permission is granted
# -x FILE : FILE exists and execute (or search) permission is granted
# -d FILE : FILE exists and is a directory
# -e FILE : FILE exists
# -f FILE : FILE exists and is a regular file
# -r FILE : FILE exists and read permission is granted
# -s FILE : FILE exists and has a size greater than zero

#check if file exists
file_exists(){
FILE="$1"
if [ -e "$FILE" ] 
then
   echo "$FILE File Exists"
else
   echo "$FILE File Does not Exists"
   exit 1
fi
}

writable(){

FILE="$1"
if [ -w "$FILE" ] 
then
   echo "$FILE is Writable"
else
   echo "$FILE is Not writable"
fi
}

readable(){

FILE="$1"
if [ -r "$FILE" ] 
then
   echo "$FILE is Readable"
else
   echo "$FILE is Not Readble"
fi
}

executable(){

FILE="$1"
if [ -x "$FILE" ] 
then
   echo "$FILE is Executable"
else
   echo "$FILE is Not Executable"
fi

}

file_exists "script.sh"
writable "script.sh"
readable "script.sh"
executable "script.sh"