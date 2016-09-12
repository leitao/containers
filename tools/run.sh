#!/bin/bash -x

echo $@

for machine in `cat machines.txt`
do
	echo "Running " $@ " on machine: " $machine
	ssh root@$machine $@
done
