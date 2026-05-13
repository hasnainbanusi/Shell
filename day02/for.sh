#!/bin/bash

#For loop in Shebang file

#In this method i used argument

for (( num=$2 ; num<=$3 ; num++ ));
do
	mkdir "$1$num"
done
