#!/bin/bash

def_drive() {

echo -n "Your age? "
read AGE

if [[ $AGE -gt 16 ]]
then
    echo "You may drive."

elif [[ $AGE -lt 16 ]]
then
    echo "You may not drive"
    exit 1

fi

}

def_drive
