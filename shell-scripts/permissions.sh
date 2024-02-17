#!/bin/bash

for i in *.txt
do
	echo "assigning execution permissions for $i"
	chmod +x $i
	sleep 1
done
