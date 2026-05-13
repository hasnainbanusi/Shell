#!/bin/bash

#How to use conditional statement in Shebang

read -p "Jetha na kis ko dekha: " bandi
read -p "Jetha kah pyaar % " pyar

if [[ $bandi == "daya"  ]];
then
	echo "Jetha is Loyal"
elif [[ $pyar -ge 100 ]];
then
	echo "Jetha is very Loyal"
else
	echo "Jetha is not Loyal"
fi

#This is just for learning purpose.
