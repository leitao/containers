#!/bin/bash -x

#########################################################################
## A script to download a Debian container for Power, launch it        ##
## run a command inside it, and remove it on Power.                    ##
## This operation usually takes around 20 seconds on these VCaaS VM    ##
#########################################################################

CONTAINERNAME=container_$USER

# List containers images that runs on ppc64 on public DockerHub server
docker search ppc64

# Download the debian container for ppc64el
docker pull ppc64le/debian

# List all images in the machine
docker images

# Create a container based on the image
docker create --name=$CONTAINERNAME ppc64le/debian

# Shows that the container was created and already died
docker ps -a

# Start another container to run a command
docker run --name=$CONTAINERNAME"_2" ppc64le/debian ps aux

# Show the containers again
docker ps -a

# Create another container and change the image
docker run --name=$CONTAINERNAME"_3" ppc64le/debian mkdir /tmp/foo

# Show the changes made by the container
docker diff $CONTAINERNAME"_3"

# Commit the changes to a new image
docker commit -a "Author" -m "Add a net tmp directory" $CONTAINERNAME"_2" debian_v2

# Create a new container based on the new image and attach to it
docker run --name=$CONTAINERNAME"_4" -i -t debian_v2 bash 

# Remove the containers
docker rm $CONTAINERNAME
docker rm $CONTAINERNAME"_2"
docker rm $CONTAINERNAME"_3"
docker rm $CONTAINERNAME"_4"

# Remove the new image
docker rmi debian_v2

