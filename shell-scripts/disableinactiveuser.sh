#!/bin/bash

echo "disabling inactive user"
read user

a=$(lastlog | grep -i "$user" | awk '{print $1}')
for i in $a
do
	usermod -L $i
	
	
done	
