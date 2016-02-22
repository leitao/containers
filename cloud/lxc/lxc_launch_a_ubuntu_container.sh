#!/bin/bash -x

#########################################################################
## A script to download a Ubuntu container for Power, launch it        ##
## and get a console on the container 				       ##
#########################################################################

# Instantiate a container directly from the web
# This will will create a ubuntu container from scratch with name “ubuntu01″
# from a debootstrap(1) command. Debootstrap needs sudo privileges, otherwise
# you should use the 'download' template, to use a already created image.
lxc-create -n ubuntu01 -t ubuntu

# Start the container
lxc-start -n ubuntu01 -d

# list the containers in fancy (-f) mode. To list the IPs
lxc-ls -f

# Get access to the container. Ctrl-A q to leave the container
# user is ubuntu and passwd is ubuntu
lxc-console -n ubuntu01

# lxc-freeze  freezes all the processes running inside the container. The
# processes will be blocked until they are explicitly thawed by the
# lxc-unfreeze command. This command is useful for batch managers to schedule a
# group of processes.
lxc-freeze -n ubuntu01

# Show the containers freeze
lxc-ls -f

# Unfreeze the container
lxc-unfreeze -n ubuntu01

# Stop the container
lxc-stop -n ubuntu01

# Destroy the container
lxc-destroy -n ubuntu01


# Try to create another container using
#lxc-create -n mycontainer -t download

