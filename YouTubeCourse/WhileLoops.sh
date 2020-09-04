#!/usr/bin/bash

n=1

while [[ "$n" -le 10 ]] 
do
    echo "$n"
    n=$(( n+1 ))
done
m=1

#This is a second way to solve this
while (( "$m" <= 10 )) 
do
    echo "$m"
    m=$(( ++m ))
done



