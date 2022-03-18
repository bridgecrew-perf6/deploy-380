#!/bin/sh

echo "Building version: "$1
docker login -u$DOCKER_USER --password $DOCKER_PWD
echo "\n####################################Building Webapp####################################"
cd ../webapp
docker build -f Dockerfile --tag webapp-$1 .

echo "\n####################################Building Engine####################################"
cd ../engine
docker build -f Dockerfile --tag engine-$1 .

echo "\n####################################Building Robin API####################################"
cd ../robin_api
docker build -f Dockerfile --tag robin_api-$1 .
cd ..
echo "\n####################################Done####################################"