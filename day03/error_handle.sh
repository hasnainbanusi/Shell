#!/bin/bahsh

#How to handle Error in Shebang file


handle() {
	mkdir demo
}

if ! handle; then
	echo "the code is exited as directory exist"
	exit 1
fi

echo "file is created"

