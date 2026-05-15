#!/bin/bahsh

#How to handle Error in Shebang file


handle() {
	mkdir Demo #---> Here u can add anything (Name/Numbers etc)
}

if ! handle; then #This portion will check error if exist in code 
	echo "the code is exited as directory exist"
	exit 1
fi

echo "file is created"

