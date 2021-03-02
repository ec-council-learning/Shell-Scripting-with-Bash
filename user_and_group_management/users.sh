#!/bin/bash

# Quickly add a new user to the system.
# This script combines the useradd cmd plus attributes.

# Create username (login).
echo 'Enter the username: '
read USER_NAME

# Persons real name.
echo 'Enter the person's real name: ''
read COMMENT

# Create a password.
echo 'PW for the acct: '
read PASSWORD

# Create the account.
# -m creates user's home dir if it does not already exist.
useradd -c "${COMMENT}" -m ${USER_NAME}

# Set the password.
echo "${USER_NAME}:${PASSWORD}" | chpasswd

# ADD THE NEW USER TO A GROUP??
echo -e "Add this user to a group?\n Yes 1. No 2.\n1 = Yes\n2 = No\n"
read sel

if [[ $sel -eq 1 ]]
then
echo 'Enter group name: '
read GROUP_NAME
usermod -G ${GROUP_NAME} ${USER_NAME}

elif [[ $sel -eq 2 ]]
then
true
# true is the equivilant of pass in Python


# Display username, pw, & the host
echo ''
echo "${USER_NAME} "
echo ''
echo "${PASSWORD} "
echo ''
echo "${HOSTNAME} "

fi
exit 0
