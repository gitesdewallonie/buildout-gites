#!/usr/bin/make
#
# Makefile for Debian
#

deb:
	dpkg-buildpackage -b -uc -us


.PHONY: deb
