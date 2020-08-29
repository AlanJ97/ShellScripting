#!/bin/bash

## This script generates a list of random passwords

#A random number as a password
PASSWORD="${RANDOM}"
echo "PASSWORD: ${PASSWORD}"

#Three random numbers together
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "PASSWORD: ${PASSWORD}"

#Use the current date/time for the basis of the password
PASSWORD=$(date +%s)
echo "PASSWORD: ${PASSWORD}"


#USe nanoseconds to act as a randomizationn
PASSWORD=$(date +%s%N)
echo "PASSWORD: ${PASSWORD}"


#A better password
PASSWORD=$(date +%s%N | sha256sum  | head -c20)
echo "PASSWORD: ${PASSWORD}"


#An even better password
PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum  | head -c32)
echo "PASSWORD: ${PASSWORD}"

#Append a special character to the password
SPECIAL_CHARACTER=$(echo '!"#$%&/()=[]*' | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"