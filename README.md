# *PPT-1765 : Open Containers on IBM Power Systems* lab at IBM Edge 2016 at Las Vegas #

Welcome to the **Open Container on IBM Power system** lab.

This lab will take place on *Wed, 21-Sep 01:15 PM - 02:15 PM* at room **124** (MGM)


## General Notice ##
  Please do **NOT** use anything on the lab laptop other than Firefox and Putty!!!
  Please keep the material on the room. Do not take it with you.


## Agenda ##

 1. **Intro, Setup and machine access**  *(10 minutes)*
	1. Expectation: Everyone has access to the virtual machine
 2. **Docker principles** *(10 minutes)*
	1. Understand and run the container management scripts at
	   /containers/cloud/docker/launch 
	1. Create a new Docker image using a Docker file
 3. **LXD principles**  *(10 minutes)*
	1. Understand the LXD commands and how to handle a container image
 4. **LXC principles**  *(10 minutes)*
	1. Learn how to handle a LXC container
	2. Understands how a new image could be created using debootstrap
 5. **Q&A** *(20 minutes)*
 6. Continue to play with the VMs, the IPs are public.
	1. If you have any question, get in touch with the Container
	   specialists at the Container ped
7. If you need an VM with longer living VM, you can use the Unicamp University
   Power mini cloud.
	
## Technologies ##

This tutorial will cover 3 container technologies on Linux on Power.

 * **Docker**
	- Docker is an open source tool that added image handling on top of
	  Linux containers.

 * **LXC**
	- LXC is the well known set of tools, templates, library and language
	  bindings. It's pretty low level, very flexible and covers just about
   	  every containment feature supported by the upstream kernel

 * **LXD**
	- LXD, called *lex‐dee*, is a container "hypervisor" and a new user
	  experience for LXC.
	  LXD is built on top of LXC to provide a new, better user experience.

 * **Others**
	- Rkt, Vagrant - Not being covered today

This lab will show how to create, start and handle a container using these
three different technologies.

## Images ##

In order to cover also image handling, this lab will also use three different
ways to get a container image, and how to customize an image on Docker:

 * **Docker**
	- Download an image already built and ready from the official [Dockerhub](https://hub.docker.com)
	- Customize an downloaded image. Change the cowsay(1) image.
	- If you want to push your image to the official Dockerhub registry, you
	  will need to register at https://hub.docker.com/register/
	
 * **LXC**
	- Download an image already built and ready from [Linux Containers website](https://linuxcontainers.org)

 * **LXD**
	- Create a Linux image directly from a apt repository using
	  debootstrap(1) command:
	  Debootstrap basically get the .deb packages from an archive and
	  extract them so they can create a basic and functional rootfs

> To speed up the lab, these VMs have Docker, LXC and LXD installed already.
>
> The process to install these packages could be seen in the printed material

## Getting Started ##

Go to the lab webpage at https://github.com/leitao/containers.

1. Get you VM IP according to the instance number described in the paper number
   in front of you computer.
	1. Get the IP for you instance on the table below.
2. On Microsoft Windows, go to *Start* -> *All programs* -> *PuTTY* and open
   the **PuTTY** application.
3. Inside the PuTTY application, go to **Host Name** box and type your instance
   IP.
4. Click **open** and you will be inside a Ubuntu 15.10 on Power environment.
5. Type the user and password as in the paper infront of you.
6. The scripts repo is already clone at *~/containers*.
7. Start with Docker :
	1. Basic docker management:
		- *cloud/docker/launch/docker_launch_a_debian_container.sh*
	2. Create a cowsay image using script:
		- *cloud/docker/cowsay/docker_create_image.sh*

8. Move to LXD
	1. Basic container management
		- *cloud/lxd/lxd_launch_a_ubuntu_container.sh*
9. Move to LXC
	1. *cloud/lxc/lxc_launch_a_ubuntu_container.sh*
	

> Be careful with these instances. They have public facing IPs and they are NOT firewalled.
> Do not put confidential information on it.


Let's get to the machine and start playing with the scripts.


=======================
-----------------------
## Scripts structure ##

The two major directories contains the same scripts, one to run at VCaaS cloud
images, and another one in a single machine in Brazil.

## Privileges ##

Almost all these commands could be run with unprivileged users, although,
debootstrap(1) command needs a sudo privilege, meaning that the LXD example
will be used with sudo.

## Virtual Machines ##

These machines are provided as part of a Technology Preview of a Virtual
Machine Service running on POWER8 in SoftLayer. They have a PED in the Solution
EXPO if anyone is interested in learning more. The PED will be in the Systems -
Power Area.

Instance      |  IP
--------------|--------------
 instance-1   | 129.33.249.64
 instance-2   | 129.33.249.65
 instance-3   | 129.33.249.66
 instance-4   | 129.33.249.67
 instance-5   | 129.33.249.68
 instance-6   | 129.33.249.69
 instance-7   | 129.33.249.70 
 instance-8   | 129.33.249.71
 instance-9   | 129.33.249.72
 instance-10  | 129.33.249.73
 instance-11  | 129.33.249.74
 instance-12  | 129.33.249.75
 instance-13  | 129.33.249.76
 instance-14  | 129.33.249.77
 instance-15  | 129.33.249.78
 instance-16  | 129.33.249.79
 instance-17  | 129.33.249.80
 instance-18  | 129.33.249.81
 instance-19  | 129.33.249.82
 instance-20  | 129.33.249.83

## Who am I ?##

Breno Leitao is a software engineer in Brazil working with Linux since 1997 and
focused on Linux on Power since 2007.

Contact: brenohl@br.ibm.com
