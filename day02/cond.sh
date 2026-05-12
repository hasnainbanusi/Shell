#!/bin/bash

#How to use conditional statement in Shebang


read -p "Enter partner name: " bandi

if [[ $bandi = "partner" ]];
then
	echo "you are Loyal"
else
	echo "you are not Loyal"
fi
