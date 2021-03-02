#!/bin/bash

# While loop. Example 1
n=1
# -le less than or equal to lt is less than = to
while [ ${n} -lt 30 ]
do
    echo n is now ${n}
    (( n++ ))
    sleep 0.05

if [[ ${n} -eq 15 ]]
then
    break

fi
done

