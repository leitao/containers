#!/bin/bash -x

for machine in `cat machines.txt`
do
	echo "Running " $@ " on machine: " $machine
	ssh root@$machine git --git-dir=/root/repository/.git --work-tree=/root/repository/ pull
done
