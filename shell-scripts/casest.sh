#!/bin/bash


echo "a=pwd"
echo "b=ls"
echo "c=whoami"
echo "d=uptime"

read -p "enter your choices:" choices

case $choices in
	a) pwd ;;
	b) ls ;;
	c) whoami ;;
	d) uptime;;
esac

