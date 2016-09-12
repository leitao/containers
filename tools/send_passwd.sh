#!/bin/bash

for machine in `cat machines.txt`
do
	echo "Sending pub key to machine: " $machine
	sshpass -fpasswd.txt ssh-copy-id root@$machine
done
