#!/bin/bash

for rename in *.txt
do 
	mv $rename ${rename%.txt}.word
done

