#!/bin/bash

path=$(df -h | grep -vE 'tmpfs|Filesystem' | awk '{print $5}' | tr -d '%')



while read -r line
do
	if [ $line -ge 10 ]
	then
        	echo "alert message: your threshold disk of cpu is exceeded"
	fi

done <<< $path

