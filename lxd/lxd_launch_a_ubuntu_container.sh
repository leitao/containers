#!/bin/bash -x

#########################################################################
## A script to download a Ubuntu 15.10 container for Power, launch it  ##
## run a command inside it, and remove it on Power.                    ##
## This operation usually takes around 20 seconds on these VCaaS VM    ##
#########################################################################

# Add a remote pointer to http://images.linuxcontainers.org
# A remote could be seen as a remote in git.
lxc remote add store images.linuxcontainers.org

# List current remotes
lxc remote list

# List the images in the remote
lxc image list store:

## Or, you can set a store as the default remote, and avoid using "store:"
lxc remote set-default store
 
# Show information about Ubuntu 15.10, aka, Wily Werewolf
# If the default remote is not set, you should use store:ubuntu/wily/ppc64el
lxc image show ubuntu/wily/ppc64el

# More info about the container
lxc image info ubuntu/wily/ppc64el

# Set the remote to local
lxc remote set-default local

# Start the container
lxc launch store:ubuntu/wily/ppc64el ubuntu

# List the containers
lxc list

# Run a command inside the container
# In this case, showing all the processes inside a container
lxc exec ubuntu -- ps aux

## Delete remote
lxc remote remove store

# Stop a running container
lxc stop ubuntu

# NOT Deleting the container image. Keep it in cache.
#lxc delete ubuntu
