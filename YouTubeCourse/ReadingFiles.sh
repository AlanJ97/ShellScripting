#!/usr/bin/bash

#First method to read files
while read p 
do
    echo $p
done < ReadingFiles.sh
#Second method to read files
cat ReadingFiles.sh | while read p
do
    echo $p
done
#Third method to read files
while IFS = read -r line
do
    echo $line
done < ReadingFiles