#!/usr/bin/bash

#\c is used to maintain the cursor in the same line, you must use -e to activate it
echo -e "Enter the name of the file: \c"
read file_name
       

#-f check if the given is a regular file or not

if  [[ -f $file_name ]]
then
       
        if [[ -w $file_name ]] 
        then
                echo "Type some text. To quit press ctrl+d"
                cat >> $file_name
        else
                echo "$file_name does not have write permission"
        fi
else
        echo "$file_name was not found"
fi


