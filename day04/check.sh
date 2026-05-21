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

wait_for_instance() {
	local instance_id="$1"
	echo "Waiting for the instance $instance_id to run..."

	while true; do
		state=$(aws ec2 describe-instance --instance-id "$instance_id"--query 'Reservations[0].instances[0].State.Name' --output text )
		if [[ "$state" == "running" ]]; then
		    echo "Instance $instance_id is running..."
			break
		fi
		sleep 10
	done
}
wait_for_instance
