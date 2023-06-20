#! /bin/bash

echo "Starting build docker container for frontend..."

# to create/build docker image
docker build -t faridfirdautama-docker/karsajobs-ui:latest .

# to show docker images's list on local
docker images

# to rename docker image
docker tag faridfirdautama-docker/karsajobs-ui:latest ghcr.io/faridfirdautama/karsajobs-ui:1.0.0

# login for ghcr.io & export the password into CR_PAT env variable
echo $CR_PAT | docker login ghcr.io --username faridfirdautama --password-stdin

# push to Github Packages
docker push ghcr.io/faridfirdautama/karsajobs-ui:1.0.0