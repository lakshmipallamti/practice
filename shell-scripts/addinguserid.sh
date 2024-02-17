#!/bin/bash
echo "please add username"
read user

grep -q $user /etc/passwd
if [ $? -eq 0 ]
then
	echo "error already user exists"
	exit 1
fi


echo "provide description for user"
read d
echo " do you want to specify userid (y/n)"
read yn
if [ $yn == y ] 
then
	echo "please enter the uid greater than 1001"
	read uid
	useradd $user -c "$d" -u $uid
	echo "$user has been added successfully with defined uid"
else
	echo "system defined user will be created"
	useradd $user -c "$d"
	echo "$user has been added with system defined uid"
fi	
