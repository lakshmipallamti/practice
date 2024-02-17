#!/bin/bash

a=$(df -h | grep -v "tmpfs\|devtmpfs\|filesystem" | awk 'NR>1 {print $5}' | cut -d '%' -f1)

for i in $a
do
	if [ "$i" -ge 10 ]
	then
		echo "check disk space "$a" which has reached threshold"
	fi
done
