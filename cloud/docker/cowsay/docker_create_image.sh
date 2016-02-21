#1/bin/bash -x

IMAGE=cowimage
DOCKERFILEPATH=/home/ubuntu/containers/cloud/docker/cowsay

docker build -t $IMAGE $DOCKERFILEPATH

# Run the image 
docker run --name=cowsaycontainer $IMAGE

# delete the container that just executed
docker rm cowsaycontainer
