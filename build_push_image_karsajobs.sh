#! /bin/bash

echo "Starting build docker container for backend..."

# to create/build docker image
docker build -t faridfirdautama-docker/karsajobs:latest .

# to show docker images's list on local
docker images

# to rename docker image
docker tag faridfirdautama-docker/karsajobs:latest ghcr.io/faridfirdautama/karsajobs:1.0.0

# login for ghcr.io & export the password into CR_PAT env variable
echo $CR_PAT | docker login ghcr.io --username faridfirdautama --password-stdin

# push to Github Packages
docker push ghcr.io/faridfirdautama/karsajobs:1.0.0