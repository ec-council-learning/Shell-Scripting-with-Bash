#!/bin/bash

#Generating Random Data, Cryptographic Hash Funtions, Text & String Manipulation

#Random number as a password.
PASSWORD="${RANDOM}"
echo "${PASSWORD}"

#Three random numbers together.
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

#Six random numbers together.
PASSWORD="${RANDOM}${RANDOM}${RANDOM}${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

#Use the current date/time as the basis for the password.
PASSWORD=$(date +%s)
echo "${PASSWORD}"

#Use nanoseconds to act as randomization.
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"

# A lengther password combining date, seconds, sha256 and chaaracter
#length specification
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "${PASSWORD}"


PASSWORD=$(date +%s%N | sha256sum | head -c48)
echo "${PASSWORD}"


#Append a special character to the password - 48 character
SPECIAL_CHARACTER=$(echo '!@#$^&*()-_=+' | fold -w1 | shuf | head -c48)


#Use SHA-3 
PASSWORD=$(date +%s%N | sha512sum | head -c48)
echo "${PASSWORD}${SPECIAL_CHARACTER}"


