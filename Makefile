#!/usr/bin/make
#
# Makefile for Debian
#
VERSION=`cat version.txt`
deb:
	git-dch -a --ignore-branch
	dch -v $(VERSION).$(BUILD_NUMBER) release --no-auto-nmu
	dpkg-buildpackage -b -uc -us
upgrade-db:
	bin/gdw_db_migration upgrade head

build:
	docker build -t gdw.website .
	docker run --name gdw.site gdw.website bash
	docker cp gdw.site:/code/devel .
	docker rm gdw.site
run:
	fig run giteswebsite

sync:
	scp "lagrange.affinitic.be:/home/gdw/gites-website/var/*key" .
	scp "lagrange.affinitic.be:/home/gdw/gites-website/var/*pass" .
	scp "lagrange.affinitic.be:/home/gdw/gites-website/var/*admins" .



.PHONY: deb upgrade-db
