#!/bin/bash

hosts="/home/ec2-user/myhosts.sh"

for i in $(cat $hosts)
do
	ping -c1 $i
	if [ $? -eq 0 ]
	then
		echo "$i its pinging"
	else
		echo "$i its not pinging!!!"
	fi
done
