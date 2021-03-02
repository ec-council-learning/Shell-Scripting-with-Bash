#!/bin/bash

# Flash OS and all data to an external gard drive.
# Schedule this in crontab.
echo ' '
echo -e " Run lsblk first? Hit 1 for Yes. Hit 2 for No: \n1 yes\n2 no\n"
read sel

# Hit 1 for lsblk.
if [[ $sel -eq 1 ]]; 
then
lsblk
echo ''

# Hit 2 for no.
elif [[ $sel -eq 2 ]];
then
true

fi

dd if=/dev/sda of=/dev/sdb
