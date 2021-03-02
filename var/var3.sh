#!/bin/bash

#  User defined Vars & Integer Comparison
echo -n "How old are you? "
read AGE

if [[ $AGE -gt 16 ]]
then
    echo "You may drive."

elif [[ $AGE -lt 16 ]]
then
    echo "You are not old enough to drive."
    exit 1

fi

