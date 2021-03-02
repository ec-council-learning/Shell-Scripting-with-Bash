#!/bin/bash

def_colour() {


for c in 90 31 91 32 33 34 35 95 36 97;
do
    echo -en "\r \e[${c}m SCRIPTING WITH BASH \e[0m "
    sleep 0.05

done

}


def_colour






#
#c='90 31 91 32 33 34 35 95 36 97'
#
#while [ c == c ]
#do
#    echo -en "\r \e[${c}m SCRIPTING WITH BASH \e[0m "
#    
#    sleep 0.05
#
#d
