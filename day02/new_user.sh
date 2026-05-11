#!/bin/bash

#How to add New user via shebang file
<<comment
read -p "Enter user name " username

sudo useradd -m $username

echo "New user added"
comment

#How to pass argument in code

echo "I'm studying BS $1 and Specializing is in $2"

