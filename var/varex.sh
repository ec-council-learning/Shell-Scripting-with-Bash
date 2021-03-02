#!/bin/bash

VAR='script'

echo "$VAR"

echo ${VAR}

# Using { } to append text to the variable."
echo " Bash ${VAR}ing."

# Use of {} for array and expansion.
touch file{1..3}.txt





# Using braces to display the var contents is an alternative way
# ${VAR} 
# Best practice is to use UPPER case for VARIABLES
# {} are not ALWAYS necessary for VARS, 
# BUT, Curly braces are ALWAYS needed for 
# ACCESSING ARRAY elements and carrying out BRACE EXPANSION
# single quote prvent vars from expansion and specificity and no changes
# Use double quotes with variables for expansion
.

# Regarding using them on Variables:
# The script will run either way however
# when appending something to the Variable, then you must use the curly brace syntax.
# ${VAR}iaible

# They are not always necessary. Some say always use them as best practice,
# in case you need them and therefore do not inadvertantly leave them out.
# While others say no because they make the code more verbose and takes longer to type.

