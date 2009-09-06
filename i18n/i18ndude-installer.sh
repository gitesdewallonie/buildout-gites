#!/bin/sh
#
# Because installing i18ndude via buildout would break Zope, we need to 
# create a new virtualenv.
# See : https://weblion.psu.edu/trac/weblion/wiki/Internationalization

virtualenv --no-site-packages .
bin/easy_install i18ndude
