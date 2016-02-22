# *YPS-1821 : Open Containers on IBM Power Systems* lab at IBM Interconnect 2016 at Las Vegas #

These are the scripts that will handle the Open Container lab. 

This lab will take place on *Mon, 22-Feb, 10:30 AM-11:30 AM* at room **319** (MGM)

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
 instance-1   | 169.44.29.131 
 instance-2   | 169.44.29.132
 instance-3   | 169.44.29.133 
 instance-4   | 169.44.29.134 
 instance-5   | 169.44.29.135 
 instance-6   | 169.44.29.136 
 instance-7   | 169.44.29.137 
 instance-8   | 169.44.29.138 
 instance-9   | 169.44.29.139 
 instance-10  | 169.44.29.140
 instance-11  | 169.44.29.148
 instance-12  | 169.44.29.149
 instance-13  | 169.44.29.150
 instance-14  | 169.44.29.151
 instance-15  | 169.44.29.152
 instance-16  | 169.44.29.153
 instance-17  | 169.44.29.154
 instance-18  | 169.44.29.155
 instance-19  | 169.44.29.156
 instance-20  | 169.44.29.157
 instance-21  | 169.44.29.158
 instance-22  | 169.45.172.98
 instance-23  | 169.45.172.99
 instance-24  | 169.45.172.100 
 instance-25  | 169.45.172.101 
 instance-26  | 169.45.172.102 
 instance-27  | 169.45.172.103 
 instance-28  | 169.45.172.104 
 instance-29  | 169.45.172.105 
 instance-30  | 169.45.172.106 
 instance-31  | 169.45.172.107 
 instance-32  | 169.45.172.108 
 instance-33  | 169.45.172.109 
 instance-34  | 169.45.172.110 
 instance-35  | 169.45.172.111 
 instance-36  | 169.45.172.112 
 instance-37  | 169.45.172.113 
 instance-38  | 169.45.172.114 
 instance-39  | 169.45.172.115 
 instance-40  | 169.45.172.116 
 instance-41  | 169.45.172.117 
 instance-42  | 169.45.172.118 
 instance-43  | 169.45.172.119 
 instance-44  | 169.45.172.120 
 instance-45  | 169.45.172.121 
 instance-46  | 169.45.172.122 
 instance-47  | 169.45.172.123 
 instance-48  | 169.45.172.124 
 instance-49  | 169.45.172.125 
 instance-50  | 169.45.172.126 

Special thanks for the team that got these machines running in time:

  * Franck Barillaud
  * John Jacobson
  * Johnny Shieh
