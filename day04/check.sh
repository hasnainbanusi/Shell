#!/bin/bash

set -euo pipefail

check_aws() {
	if ! command -v aws &> /dev/null; then
	echo "AWS CLI is not installed. Plz install it first" >&2
	fi
}
check_aws

install_aws() {
	echo "Installing AWS CLI V2 on Linux..."
	    curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
	sudo apt-get install -y unzip &> /dev/null
	unzip -q awscliv2.zip
	sudo ./aws/install

	#verify installation
	aws --version

	#clean up
	rm -rf awscliv2.zip ./aws
}
install_aws
