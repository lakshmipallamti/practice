#!/bin/bash

cd /home

for i in *
do
	chk=$(grep -c /home/$i /etc/passwd)
	if [ $chk -gt 1 ]
	then
		echo "directory is assigned"
	else
		echo "directory is not assigned"
	fi

done
