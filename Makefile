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
	docker-compose run --rm --service-ports giteswebsite /bin/zsh

sync-pass:
	scp "lagrange.affinitic.be:/home/gdw/gites-website/var/*key" pass
	scp "lagrange.affinitic.be:/home/gdw/gites-website/var/*pass" pass
	scp "lagrange.affinitic.be:/home/gdw/gites-website/var/*admins" pass

sync-data:
	mkdir -p var
	rsync -av --exclude Data.fs.old gdw@lagrange.affinitic.be:/home/gdw/gites-website/var/filestorage/ var/filestorage/
	rsync -av gdw@lagrange.affinitic.be:/home/gdw/gites-website/var/blobstorage/ var/blobstorage/

.PHONY: deb upgrade-db
