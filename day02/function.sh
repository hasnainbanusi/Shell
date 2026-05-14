#!/bin/bash

#This is function in Shebang file

read -p "enter ur love name: " bandi
read -p "pyaar in % " pyar

#This is Function Declaration
#In the same function i used argument with Dollar sign

function is_hello() {
if [[ $bandi == "me" ]];
then
	echo "$1 is loyal"
elif [[ $pyar == "100" ]];
then
	echo "$1 is Loyal"
else
	echo "$1 is Not Loyal"
fi
};
#This is function calling
is_hello "tom"
