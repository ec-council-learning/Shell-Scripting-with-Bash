#!/bin/bash

# Integer Comparison
echo -n  "How old are you? " 
read age

# Use "${age}" ? Or just $age ?
if [[ $age -gt 16 ]]
then
    echo "You may drive."

elif [[ $age -lt 16 ]]
then
    echo "You are not old enough to drive."
    exit 1
fi

# single quote prvent vars from expansion and specificity and no changes
# Use double quotes with variables for expansion
#Curly braces are ALWAYS needed for 
# ACCESSING ARRAY elements and carrying out BRACE EXPANSION.

# Regarding using them on Variables:
# The script will run either way however
# when appending something to the Variable, then you must use the curly brace syntax.
# ${VAR}iaible

# They are not always necessary. Some say always use them as best practice,
# in case you need them and therefore do not inadvertantly leave them out.
# While others say no because they make the code more verbose and takes longer to type.
