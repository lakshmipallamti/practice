#!/bin/bash

DATE=$(id -u)
#LOG file creation

mkdir -p /tmp/shell_script.logs
LOGFILE="/tmp/shell_script.logs/$0-$DATE.logs"

R='\e[31m'
G='\e[32m'
N='\e[0m'
Y='\e[33m'

VALIDATE(){
        if [ $1 -ne 0 ]
        then
                echo -e "$2 ... is $R FAILED $N"
                exit 1
        else
                echo -e "$2 ... is $G SUCCESS $N"
        fi
}

USER=$(id -u)

# checking user is root user or not

if [ $USER -eq 0 ]
then
        echo "logged in user is root user"
        for package in $@
        do
            yum list installed $package
            if [ $? -ne 0 ]
            then
                    yum install $package -y &>> $LOGFILE
		    VALIDATE $? "$package installation"
            else
                    echo -e "$package is $Y already installed $N"
            fi
        done

else
        echo "please login with root user"
fi

