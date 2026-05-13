#!/bin/bash

#This is function in Shebang file

read -p "enter ur love name: " bandi
read -p "pyaar in % " pyar

#This is Function Declaration

function is_hello() {
if [[ $bandi == "me" ]];
then
	echo "U r loyal"
elif [[ $pyar == "100" ]];
then
	echo "U r Loyal"
else
	echo "U r Not Loyal"
fi
};
#This is function calling
is_hello
