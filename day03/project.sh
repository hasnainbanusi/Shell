#!/bin/bash

reate() {
        echo "cloning the Django App.."
        git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_require() {
        echo "Resolving potential container conflicts..."
        # Remove the conflicting containerd if it's causing a deadlock
        sudo apt-get remove containerd -y 2>/dev/null || true

        echo "Installing Dependencies"
        # Fix broken dependencies and install Docker and Nginx
        sudo apt-get install -f -y
        sudo apt-get install docker.io nginx -y docker-compose
	sudo apt-get remove --purge docker.io containerd containerd.io -y
        sudo apt-get autoremove -y
        sudo apt-get clean
}

require_restart() {
        sudo chown $USER /var/run/docker.sock 
        sudo systemctl enable docker
        sudo systemctl enable nginx
        systemctl restart docker
}

deploy() {
        docker build -t notes-app
        #docker run -d -p 8000:8000 notes-app:latest
	docker-compose up -d
}
echo "******************* Deployment started ***************"
if ! create; then
        echo "the code directry already exist"
        cd django-notes-app
fi

if ! install_require; then
        echo "installation failed"
        exit 1
fi

if ! require_restart; then
        echo "System fault here"
        exit 1
fi
deploy
echo "******************* Dployment Done *****************"
