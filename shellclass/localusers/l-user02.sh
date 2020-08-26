#!/bin/bash

#Display el UID and username of the user executing this script
#Display if the user is the root user or not

#UID
echo "This user has the UID ${UID}"

#Username
#USER_NAME=$(id -un)
USER_NAME=`id -un`
echo "The user is ${USER_NAME}"

#Root or not root
if [[ "${UID}" -eq 0 ]]
then 
    echo "You are root"
else
    echo "You are not root"
fi