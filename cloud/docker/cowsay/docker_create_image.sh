#1/bin/bash

IMAGE=cowimage
DOCKERFILEPATH=/home/ubuntu/containers/cloud/docker/cowsay

docker build -t $IMAGE $DOCKERFILEPATH

# Run the image 
docker run $IMAGE
