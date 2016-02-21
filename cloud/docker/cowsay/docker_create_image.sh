#1/bin/bash

IMAGE=cowimage

docker build -t $IMAGE .

# Run the image 
docker run $IMAGE
