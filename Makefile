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

.PHONY: deb upgrade-db
