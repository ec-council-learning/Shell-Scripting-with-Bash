#!/bin/bash

echo "Enter the IP address you want scanned: "
read IP

nmap -p- -sS -sV -T4 -A $IP
