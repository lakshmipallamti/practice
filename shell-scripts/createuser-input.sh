#!/bin/bash

echo "how many files need to be created"

read filecount

echo "please enter starting name of the file"

read startname

echo "please enter file type"

read filetype

for i in $(seq 1 $filecount)
do
	touch "$startname.$i.$filetype"
	chmod +x "$startname.$i.$filetype"
done
