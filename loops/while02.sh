#!/bin/bash

# While loop.
#Needs a break to prevent infinite looping
n=1
while [ ${n} -lt 30 ]
do
    echo n is now ${n}
    (( n++ ))
    sleep 0.05

if [[ ${n} -eq 16 ]]
then
    break

fi
done
