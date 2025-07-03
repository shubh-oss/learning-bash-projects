#!/bin/bash

free_space=$(free -mt | grep "Total" | awk '{print $4}')
th=500

if [[ $free_space -lt $th ]]
then
       echo "Warning Ram is running Low"
else
       echo "Ram is sufficient"
fi
