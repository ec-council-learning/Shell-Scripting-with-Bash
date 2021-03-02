#!/bin/bash

# Var & conditional example
object=z

if [[ $object == "y" ]]
then
    echo "no"

elif [[ $object == "z" ]]
then
    echo "yes"

fi

# Assigning vals to vars.
# Just keep it simple and use the fail-safe method
# use either upper or lowercase, dont mess around with numbers and 
# special chars
