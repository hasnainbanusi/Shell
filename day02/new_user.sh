#!/bin/bash

#How to add New user via shebang file

read -p "Enter user name " username

sudo useradd -m $username

echo "New user added"
