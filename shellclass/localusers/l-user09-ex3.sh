#!/bin/bash

##This script creates a new user on the local system
#You must supply a username as an argument to the script


# Make sure the script is being executed with superuser privileges.
UID_TO_TEST_FOR=0
if [[ "${UID}" -ne ${UID_TO_TEST_FOR} ]]
then
    echo "Your id does match ${UID_TO_TEST_FOR} you are not root"
    exit 1
fi

# If the user doesn't supply at least one argument, then give them help.
if [[ "${#}" -lt 1 ]]
then
    echo "You must write at least one argument, please"
    echo "Usage: ${0} USER_NAME [COMMENT]..."
    exit 1
fi
# The first parameter is the user name.
USERNAME="${1}"

# The rest of the parameters are for the account comments.
shift
COMMENTS="${@}"

# Generate a password.
PASSWORD=$(date +%s%N | sha256sum  | head -c48)

# Create the user with the password.
useradd -c "${COMMENTS}" -m ${USERNAME} 

# Check to see if the useradd command succeeded.
if [[ "${?}" -eq 0 ]]
then
    echo "Succesfully user added"
else
    echo "An error occured creating the user"
    exit  1
fi
# Set the password.
echo "${USERNAME}:${PASSWORD}" | chpasswd 

# Check to see if the passwd command succeeded.
if [[ "${?}" -eq 0 ]]
then
    echo "Succesfully password set"
else
    echo "An error occured setting the password"
    exit 1
fi
# Force password change on first login.
passwd -e ${USERNAME}

# Display the username, password, and the host where the user was created.
echo
echo "USERNAME: ${USERNAME}"
echo "PASSWORD: ${PASSWORD}"
echo "HOST: ${HOSTNAME}"
exit 0