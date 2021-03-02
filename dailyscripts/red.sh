#!/bin/bash

echo ''
echo -e "Redshift: ON 1. OFF 2.\n1 = ON\n2 = Off\n"
read sel

# Turn on redshift
if [[ $sel -eq 1 ]]
then
redshift -O 4700K

# Turn OFF
elif [[ $sel -eq 2 ]]
then
redshift -x

echo ''

fi
