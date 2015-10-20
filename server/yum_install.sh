#!/bin/sh

pkglist="httpd zsh git xz"

for pkg in $pkglist
do
    yum -y install $pkg
done


    
