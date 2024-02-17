#!/bin/bash

echo "enter username"
read USERNAME
echo "user name is $USERNAME"

echo "enter password"
read PASSWORD
echo "password is $PASSWORD"

# -s is hiding text what you are entering
echo "enter your company name"
read -s COMPANYNAME
echo  "enter company name: $COMPANYNAME"
