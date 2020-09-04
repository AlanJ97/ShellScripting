#!/usr/bin/bash

os=('a' 'b' 'c')
#Adding items
os[3]='d'
echo "${os[@]}"
echo "${os[0]}"
echo "${!os[@]}"
#REmoving items
unset os[2]
echo "${#os[@]}"

#Strings are treated as arrays, a whole string is one array