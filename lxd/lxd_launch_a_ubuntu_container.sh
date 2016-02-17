#!/bin/bash -x

# LXD Example on how to add a "Store" and download Ubuntu for POWER
# "Stores" is also known as "remote" and handled by the lxc remote commands.

## Add a store pointer to http://images.linuxcontainers.org
lxc remote add store images.linuxcontainers.org

# List current stores:
lxc remote list

# list the store
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

# Delete remote
lxc remote remove store
