#!/bin/bash

#  Got Root??
echo "Your UID is ${UID}"

# Using {braces} to display the var contents 
# is an alternative syntax
if [[ $UID -ne 0 ]]
then

    echo "You are NOT ROOT!"

fi


