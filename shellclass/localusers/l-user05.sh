#!/bin/bash

##This script creates a new user on the local system 


# Make sure the script is being executed with superuser privileges.
UID_TO_TEST_FOR=0
if [[ "${UID}" -ne ${UID_TO_TEST_FOR} ]]
then
    echo "Your id does match ${UID_TO_TEST_FOR} you are not root"
    exit 1
fi

# Get the username (login).
read -p "Tell me the username to add: " USERNAME 

# Get the real name (contents for the description field).
read -p "Tell me the name of the person who is using this account: " NAME 

# Get the password.
read -p "Tell me password of the account to create: " PASSWORD 

# Create the user with the password.
useradd -c "${NAME}" -m ${USERNAME} 

# Check to see if the useradd command succeeded.
if [[ "${?}" -eq 0 ]]
then 
    echo "Success adding user"
else
    echo "No success adding user"
    exit 1
fi

# Set the password.
echo "${USERNAME}:${PASSWORD}" | chpasswd 

# Check to see if the passwd command succeeded.
if [[ "${?}" -eq 0 ]]
then 
    echo "Success adding password"
else
    echo "No success adding password"
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