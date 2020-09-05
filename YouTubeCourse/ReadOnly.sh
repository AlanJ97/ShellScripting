#!/bin/bash
#It executes something until the ocndition is false

var=30

readonly var

var=50

echo "Var: $var"

hello(){
    echo "Hello"
}

#When you want to make a function readonly, you must use -f after assignment
readonly -f hello

hello(){
    echo "Hello again"
}