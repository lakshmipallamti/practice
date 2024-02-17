#!/bin/bash

count=0
num=10

while [ $count -le 10 ]
do
	echo "$num seconds left to stop this $1"
	sleep 1
	num=$((num - 1))
	count=$((count + 1))
done

echo "$1 process is stopped!!"
