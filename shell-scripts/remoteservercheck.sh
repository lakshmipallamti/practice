#!/bin/bash


ping -c1 localhost
if [ $? -ne 0 ]
then
	echo "ping not working"
else
	echo "its pinging!!"
fi
