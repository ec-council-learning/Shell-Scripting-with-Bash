#!/bin/bash


# This Bash Script enables the user to quickly edit text files.
echo "What do you want to do?"
echo "1) Remove duplicates "
echo "2) Sort by length "
echo "3) Sort by [0-9][A-Z] "
echo "4) Remove all blank lines "
echo "q) quit "
read -p "> " choice

# The case statement is used in lieu of a nested if statement. 
# It is a way to simplify complex conditionals.
case $choice in 

# 1) Remove duplicates
        1) read -p "Enter path to file: " f_path
        awk '!(count[$0]++)' "$f_path" > ${f_path}-new
        [ $? -eq 0 ] && { echo "Duplicates have been removed, see new file at ${f_path}-new"; exit 0; }
        ;;



# 2) Sort by length
        2) read -p "Enter path to file: " f_path
        awk '{print length, $0}' "$f_path" | sort -n | cut -d " " -f2- > ${f_path}-new
        [ $? -eq 0 ] && { echo "File has been sorted by length at ${f_path}-new"; exit 0; }
        ;;



# 3) Sort by [0-9][A-Z]
        3) read -p "Enter path to file: " f_path
        sort "$f_path" | uniq > ${f_path}-new
        [ $? -eq 0 ] && { echo "File has been sorted in alphebetical order at ${f_path}-new"; exit 0; }
        ;;



# 4) Remove all blank lines
        4) read -p "Enter path to file: " f_path
        egrep -v "^[[:space:]]*$" "$f_path" > ${f_path}-new
        [ $? -eq 0 ] && { echo "All blank lines removed at ${f_path}-new"; exit 0; }
        ;;
        

# 5) Quit
        q) echo "Cheers"
        ;;
        *) echo "Have a nice day"
        ;;

esac
