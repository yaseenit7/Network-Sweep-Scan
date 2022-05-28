#!/bin/bash

nmap -sn $1 -oG hosts.txt 2>/dev/null;cat hosts.txt | cut -d " " -f 2 | grep -iv nmap | tee livehosts.txt;rm hosts.txt
