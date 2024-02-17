#!/bin/bash

DATE=$(date +%F)
echo "todays date is : $DATE"

N="\e[0m"
G="\e[32m"

USER=$(id -u)

if [ $USER -ne 0 ]
then
	echo "please login with the root user"
	exit 1
fi

# To check whether git is installed or not

yum list installed git

if [ $? -ne 0 ]
then
	echo "lets install git"
	yum install git -y
	echo -e "installation of git is $G SUCCESS $N"
else
	echo "git is already installed"
fi
