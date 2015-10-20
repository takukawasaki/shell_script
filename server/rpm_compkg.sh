#!/bin/sh

if [ ! -f "$1" ]
then
    echo "[ERROR] file does not exists" >&2
    exit 2
fi


pkgname-$(rpm -qf "$1")

if [ $? -eq 0 ]
then
    echo "$1 -> $pkgname"
else
    echo "$1 is not in pkg" >&2
    exit 1
fi


