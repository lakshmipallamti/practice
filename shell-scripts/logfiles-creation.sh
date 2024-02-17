# ls -l > ls.log
# cat ls.log
# displays output
# lss -l > ls1.log
# cat ls1.log
# it will not displays the output
# ls -l 1>1ls.log
# cat 1ls.log
# it displays output
# lss -l 2>2ls.log
# cat 2ls.log
# it will display error output
# simply 1 means success
# simply 2 means failure
# ls -l &> log.log
# lss -l &>> log.log
#   &> it displays both success and failure output


#!/bin/bash

mkdir -p /home/ec2-user/shell.logs
#script_file=$0
DATE=$(date +%F)
LOGFILE="/home/ec2-user/shell.logs/$0-$DATE.log"
VALIDATE(){
        if [ $1 -ne 0 ]
        then
                echo "$2 ... is failed"
                exit 1
        else
                echo "$2 ... is success"
        fi
}

USER=$(id -u)

if [ $USER -ne 0 ]
then
        echo "please login with root user"
        exit 1
else
        echo "logged in user is root user"
fi

yum install git -y &>> $LOGFILE

VALIDATE $? "installing git" 

yum install httpd -y &>> $LOGFILE

VALIDATE $? "installing httpd" 

yum install tree -y &>> $LOGFILE

VALIDATE $? "installing tree" 

