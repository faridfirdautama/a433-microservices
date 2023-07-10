#! /bin/bash

echo "Starting build docker container for order-service..."

# to create/build docker image
docker build -t faridfirdautama-docker/order-service:latest .

# to show docker images's list on local
docker images

# to rename docker image
docker tag faridfirdautama-docker/order-service:latest ghcr.io/faridfirdautama/order-service:1.0.0

# login for ghcr.io & export the password into CR_PAT env variable
echo $CR_PAT | docker login ghcr.io --username faridfirdautama --password-stdin

# push to Github Packages
docker push ghcr.io/faridfirdautama/order-service:1.0.0