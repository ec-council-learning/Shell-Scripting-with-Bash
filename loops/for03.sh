#!/bin/bash

# init i with 0, evals i's value
for (( i=1; i<50; i++ ));
do

    sleep 0.05
    i=$((i + 1))
    echo $i

done
