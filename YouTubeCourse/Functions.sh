#!/bin/bash

#There are two ways in ehich we can build functions

#1
#You can pass variables with its position, $1..$2..$33....
function hello(){
    echo "Hello"
    echo $1
}

#2
quit(){
    exit
}

hello alan #We're passing the string "Alan" to the function  
quit