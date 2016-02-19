#!/bin/bash -x

#########################################################################
## A script to download a Ubuntu container for Power, launch it        ##
## and get a console on the container 				       ##
#########################################################################

# Instantiate a container directly from the web
# This will will create a ubuntu container with name “ubuntu01″ from a
# debootstrap(1) command.
lxc-create -n ubuntu01 -t ubuntu

# Start the container
lxc-start -n ubuntu01 -d

# Get access to the container
lxc-console -n ubuntu01
