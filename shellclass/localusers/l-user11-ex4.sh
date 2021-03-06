#!/bin/bash

##This is a copy of the prevoius excercise, but improved

# Make sure the script is being executed with superuser privileges.
if [[ "${UID}" -ne 0 ]]
then
    echo 'Please run with  sudo or as root' >&2
    exit 1
fi

# If the user doesn't supply at least one argument, then give them help.
if [[ "${#}" -lt 1 ]]
then
    echo "Usage: ${0} USERNAME [COMMENT]..." >&2
    echo "Create an account on the local system  with the name of USER_NAME and comments field of comment" <&2
    exit 1
fi

# The first parameter is the user name.
USERNAME="${1}"

# The rest of the parameters are for the account comments.
shift
COMMENT=${@}

# Generate a password.
PASSWORD=$(date +%s%N | sha256sum | head -c48)

# Create the user with the password.
useradd -c "${COMMENT}" -m ${USERNAME} &> /dev/null

# Check to see if the useradd command succeeded.
if [[ "${?}" -ne 0 ]]
then
    echo 'The account could not be created' >&2
    exit 1
fi

# Set the password.
echo "${USERNAME}:${PASSWORD}" | chpasswd &> /dev/null

# Check to see if the passwd command succeeded.
if [[ "${?}" -ne 0 ]]
then
    echo 'The password for the account could not be set' >&2
    exit 1
fi

# Force password change on first login.
passwd -e ${USERNAME} &> /dev/null

# Display the username, password, and the host where the user was created.
echo "USERNAME: ${USERNAME}"
echo "PASSWORD: ${PASSWORD}"
echo "HOST: ${HOSTNAME}"
exit 0
