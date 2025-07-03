#!/bin/bash
# Monitoring free disk space and setting up alerts

fu=$(df -H | egrep -v "Filesystem|tmpfs" | grep "sda2" | awk '{print $5}' | tr -d %)
TO="shubholvedi1402@gmail.com"

if [[ $fu -ge 20 ]]
then
    echo "Warning, disk space is very low -- $fu %" | mail -s "Disk space alert!" $TO
else
    echo "All Good"
fi
