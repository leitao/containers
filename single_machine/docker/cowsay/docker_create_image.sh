#1/bin/bash

IMAGE=cowimage_$USER

docker build -t $IMAGE .

# Run the image 
docker run $IMAGE
