#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

echo 'Enter the IP range to scan: '
read IP

nmap $IP -sn -f -vv -n >/dev/null -oG ScanResults
#nmap 192.168.50.1-254 -sn -f -vv -n >/dev/null -oG ScanResults

awk '{print $2, $5}' | grep -i up > ScanResults2

cat ScanResults2




