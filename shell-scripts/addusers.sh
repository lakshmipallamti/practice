#!/bin/bash

echo "please enter username to add user"

read user

new=$(grep -q $user /etc/passwd)

if [ $? -eq 0 ]
then
	echo "user already exists"
else	
	useradd $user
fi
