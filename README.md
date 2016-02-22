Scripts to show the "Open Containers" demo at IBM Interconnect 2016 at Las Vegas.

The two major directories contains the same scripts, one to run at VCaaS cloud
images, and another on in a Cloud machine in Brazil.

This tutorial will cover 3 container technologies on Linux on Power.

 * LXC
	- LXC is the well known set of tools, templates, library and language
	  bindings. It's pretty low level, very flexible and covers just about
   	  every containment feature supported by the upstream kernel

 * Docker
	- Docker is an open source tool that added image handling on top of
	  Linux containers.

 * LXD
	- LXD, called "lex‐dee", is a container "hypervisor" and a new user
	  experience for LXC.
	  LXD is built on top of LXC to provide a new, better user experience.

This lab will show how to create, start and handle a container using these
three different technologies.

In order to cover also image handling, this lab will also use three different
ways to get a container image, and how to customize an image on Docker:

 * LXD
	- Create a Linux image directly from a apt repository using
	  debootstrap(1) command:
	  Debootstrap basically get the .deb packages from an archive and
	  extract them so they can create a basic and functional rootfs

 * LXC 
	- Download an image already built and ready from
	  https://linuxcontainers.org/

 * Docker
	- Download an image already built and ready from the official Dockerhub
	- Customize an downloaded image. Change the cowsay(1) image.
