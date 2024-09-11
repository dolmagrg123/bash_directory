#! /bin/bash

# mkdir -p Directory2

# echo "Enter Directory name to check"
# read direct

# if [ -d "$direct" ]
# then   
#     echo "$direct Directory Exist"
# else
#     echo "$direct Directory Does not Exist"
# fi

echo "enter filename to create"
read fileName
touch $fileName

if [[ -f "$fileName" ]]
then
    echo "filename exist"
else
    echo "filename does not exist"

fi