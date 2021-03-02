#!/bin/bash

# Quickly edit text files
# You must be root to execute this script.
if [[ "${UID}" -ne 0 ]]
then
   echo 'You must be root to run this script.'
   exit 1
fi

echo "What do you want to do? "
echo "1) Change file ownership of just one user? "
echo "2) Change all at once? "
read -p "> " choice

case $choice in

    1) read -p "Change file ownership to which user? " USER
    read -p "File name: " FILE
    chown ${USER} ${FILE}
    [ $? -eq 0 ] && { echo "File ownership has been changed. "  "${FILE}"; exit 0; } 
    ;;

#ls -lt ${FILE}

    2) read -p "New owner: " OWNER
    read -p "Group: " GROUP 
    read -p "File: " FILE
    chown ${OWNER}:${GROUP} ${FILE}
    [ $? -eq 0 ] && { echo "Owner and file have both been changed." "${FILE}"; exit 0; }
    ;;
    
#ls -lt ${FILE}

esac
