#!/bin/bash
DIRSOURCES="/etc/apt/"
SOURCESLIST=$DIRSOURCES"sources.list"
cp sources/getdeb.list $SOURCESLIST".d/"
cp sources/medibuntu.list $SOURCESLIST".d/"
if [ "$1" != "LXDE" ]; then
    cp sources/elementaryart-elementarydesktop-maverick.list $SOURCESLIST".d/"
    #clave repo elementaryart
    apt-key adv --recv-keys --keyserver keyserver.ubuntu.com FC5D50C5
else
    #clave repo lubuntu
    apt-key adv --recv-keys --keyserver keyserver.ubuntu.com CF57B0F4
fi
#clave repo de tuquito
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 5DBA3347
#clave repo getdeb
wget -q -O- http://archive.getdeb.net/getdeb-archive.key | apt-key add -
#clave repo medibuntu
apt-get --quiet update
apt-get --yes --quiet --allow-unauthenticated install medibuntu-keyring
