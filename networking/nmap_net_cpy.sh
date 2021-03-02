#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

nmap 192.168.50.1-254 -sn -f -vv -n >/dev/null -oG ScanResults

awk '{print $2, $5}' ScanResults | grep -i up > ScanResults2

cat ScanResults2

