#!/bin/bash

# While loop. Example 1
# -le less than or equal to lt is less than = to
n=1

while [ $n -le 30 ]
do
    echo n is now $i
    (( i=+1 ))
    sleep 0.05

done
