#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then
	echo " please login with the root user"
	exit 1
else
	echo "Great, you have logged in with root user"
fi

# check whether packages instaled or not 

if [ $? -ne 0 ]
then 
	echo "above output is fail"
else
	
	for i in $@
	do
		yum list installed $i
		if [ $? -ne 0 ]
        	then
			echo "lets install $i packages"
			yum install $i -y
		else
			echo "$i is already installed"
		fi
	done
fi
