#! /bin/bash

echo "Starting build docker container..."

# to create/build docker image
docker build -t item-app:v1 .

# to show docker images's list on local
docker images

# to rename docker image
docker tag item-app:v1 item-app:1.0.0

# login for ghcr.io & export the password into CR_PAT env variable
echo $CR_PAT | docker login ghcr.io --username faridfirdautama --password-stdin

# push to Github Packages
#docker tag item-app ghcr.io/faridfirdautama/item-app:1.0.0
docker push ghcr.io/faridfirdautama/item-app:1.0.0