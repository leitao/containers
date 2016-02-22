# Scripts to show the "Open Containers" demo at IBM Interconnect 2016 at Las Vegas #

The two major directories contains the same scripts, one to run at VCaaS cloud
images, and another on in a Cloud machine in Brazil.

## Technologies ##

This tutorial will cover 3 container technologies on Linux on Power.

 * Docker
	- Docker is an open source tool that added image handling on top of
	  Linux containers.

 * LXC
	- LXC is the well known set of tools, templates, library and language
	  bindings. It's pretty low level, very flexible and covers just about
   	  every containment feature supported by the upstream kernel

 * LXD
	- LXD, called "lex‐dee", is a container "hypervisor" and a new user
	  experience for LXC.
	  LXD is built on top of LXC to provide a new, better user experience.

This lab will show how to create, start and handle a container using these
three different technologies.

## Images ##

In order to cover also image handling, this lab will also use three different
ways to get a container image, and how to customize an image on Docker:

 * Docker
	- Download an image already built and ready from the official Dockerhub
	- Customize an downloaded image. Change the cowsay(1) image.

 * LXC 
	- Download an image already built and ready from
	  https://linuxcontainers.org/

 * LXD
	- Create a Linux image directly from a apt repository using
	  debootstrap(1) command:
	  Debootstrap basically get the .deb packages from an archive and
	  extract them so they can create a basic and functional rootfs

## Privileges ##

Almost all these commands could be run with unpriviliged users, although,
debootstrap(1) command needs a sudo privilege, meaning that the LXD example
will be used with sudo.

## Virtual Machines ##

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
