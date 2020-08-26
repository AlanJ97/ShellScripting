#!/bin/bash

#This script displays  various information on the screen

#Say HELLO
echo "hello"
#type -a "ORDER" -> this gives you informationa bout the order in the system

#Assign a value to a variable
WORD='script'
ENDING='ed'

#print things
echo "$WORD"
echo '$WORD'
echo "This is a shell $WORD"
echo "This also is a shell ${WORD}"

#Append text to a variable with ${}
echo "${WORD}ing is fun!"

#Combining two or more variables
echo "The combination is ${WORD}${ENDING}"

#Reassigning values in variables
ENDING='ing'
echo "The combination is ${WORD}${ENDING}"