#!/bin/bash

#Display de UID and username of the user executing this script

#UID
echo "Your UID is ${UID}"

#Display if UID is not 1000
UID_TO_TEST_FOR=1000
if [[ "${UID}" -ne ${UID_TO_TEST_FOR} ]]
then
    echo "Your id does match ${UID_TO_TEST_FOR}"
    exit 1
fi

#Username
USER_NAME=$(id -un)

#Test if the command succeded
if [[ "${?}" -ne 0 ]]
then 
    echo "The id command did not execute succesfully"
    exit 1
fi
echo "Your name is ${USER_NAME}"

#You can use a string test conditional
USER_NAME_TO_TEST="alan"
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST}"  ]]
then
    echo "YOur username matches ${USER_NAME_TO_TEST}"
fi

#Test for != (not equal) for the string
if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST}" ]]
then
    echo "Your username does not match ${USER_NAME_TO_TEST}"
    exit 1
fi
exit 0