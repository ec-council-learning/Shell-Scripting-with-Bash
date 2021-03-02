#!/bin/bash

#Set an arrary
for i in {1..100}
do

# break the loop
    sleep 0.05
if [[ $i -gt 60 ]]
then
    break

fi 
echo "$i"

done
