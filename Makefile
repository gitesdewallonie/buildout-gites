#!/usr/bin/make
#
# Makefile for Debian
#
VERSION=`cat version.txt`
deb:
	git-dch -a --ignore-branch
	dch -v $(VERSION).$(BUILD_NUMBER) release --no-auto-nmu
	dpkg-buildpackage -b -uc -us
bar:
	for i in `seq -w 01 04` ; do \
	    echo $$i ; \
	done

.PHONY: deb
