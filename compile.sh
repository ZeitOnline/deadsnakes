#!/bin/bash

wget https://bitbucket.org/deadsnakes/python2.7-updates/get/debian/2.7.12-1_trusty1.tar.bz2 -O python2.7.12.tar.bz2
mkdir python2.7.12
tar xf python2.7.12.tar.bz2 -C python2.7.12  --strip-components 1
cd python2.7.12
DEB_BUILD_OPTIONS="nocheck nobench" dpkg-buildpackage -rfakeroot
mv ../*.deb /vagrant
