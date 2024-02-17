#!/bin/bash

USER=$(id -u)

VALIDATE(){
	if [ $1 -ne 0 ]
	then
		echo "$2 ... is failed"
		exit 1
	else
		echo "$2 ... is success"
	fi
}

if [ $USER -ne 0 ]
then
	echo "please login with root user"
	exit 1
else
	echo "logged in user is root user"
fi

yum install git -y

VALIDATE $? "installing git"

yum install httpd -y

VALIDATE $? "installing httpd"

yum install tree -y

VALIDATE $? "installing tree"
