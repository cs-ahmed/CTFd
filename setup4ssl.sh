#!/bin/bash

# install docker for Ubuntu
# https://docs.docker.com/engine/install/ubuntu/

# chomd +x setup4ssl.sh

sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update

sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

# install docker compose for Ubuntu
# https://docs.docker.com/compose/install/#install-compose

sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

# Generate KEY and CRT in ssl directory
sudo openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out ./ssl/ctfd.crt -keyout ./ssl/ctfd.key
