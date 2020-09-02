#!/usr/bin/bash

#\c is used to maintain the cursor in the same line, you must use -e to activate it
echo -e "Enter the name of the file: \c"
read file_name

#-e check if the file exists or nor
#-f check if the given is a regular file or not

if  [[ -e $file_name ]]
then
        echo "$file_name was found"
        if [[ -f $file_name ]] 
        then
                echo "$file_name is a regular file"
        else
                echo "$file_name is not a regular file"
        fi
else
        echo "$file_name was not found"
fi

#-d check if the given is a directory
if [[ -d $file_name ]] 
then
        echo "The directive exists"
else
        echo "The directive doesn't exist"
fi

#-b check if the given is a block special file
#-c check if the given is a  character special file
#-s check if the file is mepty or not
#-r this checks if the file has the read permission
#-w this checks if the file has the write permission
#-x this checks if the file has the execute permission