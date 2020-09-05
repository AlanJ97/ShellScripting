#!/bin/bash

#There are two ways in ehich we can build functions

#1
#You can pass variables with its position, $1..$2..$33....
#When yo use Local after a word, it means that variable could only be used inside
#that function, but outside, the name will have a diffferent value
function hello(){
    local name=$1
    echo "Hello $name"

}

name="Juan"
echo $name
hello alan #We're passing the string "Alan" to the function  
echo $name