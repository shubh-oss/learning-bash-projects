#!/bin/bash
#simple password generator

echo "This is a Simple Password generator"
echo "Enter the Length of the password"
read pass_len

for p in $(seq 1);
do    
        openssl rand -base64 48 | cut -c1-$pass_len
done
