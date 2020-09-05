#!/bin/bash
#It executes something until the ocndition is false

n=1

until [ $n -gt 10 ]
do
    echo $n
    n=$(( n+1 ))
done
m=1
until (( $m > 10 ))  
do
    echo $m
    m=$(( ++m ))
done