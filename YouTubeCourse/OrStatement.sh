#!/usr/bin/bash

age=253

if [[ "$age" -lt 26 ]] || [[ "$age" -gt 2222 ]] 
then
        echo "Age valid"
else
        echo "Age not valid"
fi

#This is a different way in which we can write an and statement
if [ "$age" -lt 26 -o "$age" -gt 2 ] 
then
        echo "Age valid"
else
        echo "Age not valid"
fi

#And this is the third way to di this
if [[ "$age" -lt 26 || "$age" -gt 2 ]] 
then
        echo "Age valid"
else
        echo "Age not valid"
fi