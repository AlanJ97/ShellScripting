#!/bin/bash

#This script creates an account on the local system
#You will be prompted for the account name and password

#Ask for the username
read -p "Tell me the username to add: " USERNAME 

#Ask for the real name
read -p "Tell me the name of the person who is using this account: " NAME 

#Ask for the password
read -p "Tell me password of the account to create: " PASSWORD 

#Create user
useradd -c "${NAME}" -m ${USERNAME} 
#useradd -c "${NAME}" -m "${USERNAME}" -p "${PASSWORD}"

#Set the password for the user
#echo ${PASSWORD} | passwd --stdin ${USERNAME}
echo "${USERNAME}:${PASSWORD}" | chpasswd 
#Force password change on the first login
passwd -e ${USERNAME}
#passwd -ed "${USERNAME}"
