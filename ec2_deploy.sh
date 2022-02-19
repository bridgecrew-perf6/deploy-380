#!/bin/sh

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
git clone https://github.com/rocketstreets/deploy.git
cd deploy
export DOCKER_USER=$DOCKER_USER
export DOCKER_PWD=$DOCKER_PWD
sh docker_deploy.sh
