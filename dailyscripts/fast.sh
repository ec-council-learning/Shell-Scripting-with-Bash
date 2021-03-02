#!/bin/bash

echo ''
echo -e 'Increase cursor speed. Press 1 for Yes, or 2 for No.'
read sel

# ON
if [[ $sel -eq 1 ]];
then
xset r rate 360 70

# OFF
elif [[ $sel -eq 2 ]];
then
xset r rate 320 40

fi



