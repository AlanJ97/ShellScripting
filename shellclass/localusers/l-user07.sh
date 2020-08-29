#!/bin/bash

## This generates a random password  for each user specified on the command line

# Display  what the user  typed on the  command line
echo "You executed this command: ${0}"

#Display de path and the name of the file used
echo "You used $(dirname ${0}) as the path of $(basename ${0}) script"

#Tell people how many arguments they passed in
#(Inside  the script they are parameters , outside they are arguments)

NUMBER_OF_PARAMETERS="${#}"
echo "You supplied ${NUMBER_OF_PARAMETERS} argument(s) on the command line"

#Make sure that at least one argument is passed
if [[ "${NUMBER_OF_PARAMETERS}" -lt 1 ]]
then
    echo "Usage: ${0} USER_NAME [USER_NAME]..."
    exit 1
fi

#Generate a random password for each parameter
for USER_NAME in "${@}"
do 
    PASSWORD=$(date +%s%N | sha256sum  | head -c48)
    echo "${USER_NAME}: ${PASSWORD}"
done 