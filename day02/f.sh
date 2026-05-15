#!/bin/bash

#this is for practice

# This script renames all .txt files to .bak (backup)
<< hem
i=0
while [[ $(($i%2))==0 && $i -le 30 ]]
do
	echo "Prime No: $i"
	i=$((i+3))
done
hem

<< hi
for (( i=3 ; i<=15 ; i+=3 ));
do
	echo "Prime No: $i"
done
hi

<< comment
for i in {1..50}
do
   echo "Welcome $i times"
done
commet
