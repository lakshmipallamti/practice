#!/bin/bash
echo "enter count"
read count

if [ $count -le 0 ]
then
	echo "$count is less than 0"
else
	echo "$count is not less than 0"
fi
