#!/bin/bash

# Instantly Create & chmod either a Python or Bash file/script
# Make sure the script is being executed with sudo privileges.
if [[ "${UID}" -ne 0 ]]
then
   echo 'Please run with sudo or as root.'
   exit 1
fi


# Create either a Python or Bash file & open it with Vim
echo -e "Create a Python or Bash file: \n1 = Python\n2 = Bash"
read sel

# Crete a Python file/script
if [[ $sel -eq 1 ]];
then
    echo "Name the Python file: "
    read NAME
touch $NAME.py
echo '#!/usr/bin/env python3' > $NAME.py
chmod +x $NAME.py
vim $NAME.py


# Create a Bash Script
elif [[ $sel -eq 2 ]];
then
    echo "Name the Bash script: "
    read NAME
touch $NAME.sh
chmod 755 $NAME.sh
echo '#!/bin/bash' > $NAME.sh
vim $NAME.sh


exit 0
fi
