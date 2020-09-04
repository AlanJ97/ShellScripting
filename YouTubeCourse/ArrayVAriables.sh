#!/usr/bin/bash
var=$1
case $var in
    "car" ) echo "Car"
    ;;
    "van" ) echo "car"
    ;;
    "truck" ) echo "truck"
    ;;
    * ) echo "We don't HAVE IT"
    ;;
esac


echo -e "Give me something: \c"
read value
# ? indicates that one character is recognized
# * indicates strings of more than one character
case $value in
    [a-z] ) echo "$value is in a-z"
    ;;
    [A-Z] ) echo "$value is in A-Z"
    ;;
    [0-9] ) echo "$value is in 0-9"
    ;;
    ? ) echo "$value is one character"
    ;;
    *) echo "$value has more than one character"
    ;;
esac
