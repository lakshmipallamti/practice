#!/bin/bash


USER=$(id -u)

R="\e31m"
G="\e32m"
N="\0m"


#install git package

if [ $USER -ne 0 ]
then
	echo "please login with the root user"
	exit 1
else
	echo "logged in user is a root user"
fi

yum install git -y

if [ $? -ne 0 ]
then
	echo -e "installtion is $R Failed $N"
else
	echo -e "installation is $G Success $N"
fi
