#!/usr/bin/bash

n=1

while [[ "$n" -le 10 ]] 
do
    echo "$n"
    n=$(( n+1 ))
done
m=1

#This is a second way to solve this
#sleep dalays in seconds given the function
#gnome-terminal & this opens terminal if needed
while (( "$m" <= 10 )) 
do
    echo "$m"
    m=$(( ++m ))
    sleep 2
    gnome-terminal &
done



