#!/bin/sh

if [ ! -f "$1" ]
then
    echo "file does not exists $1" >&2
    exit 1
fi

pkglist=$(cat "$1")

rpm -q $pkglist --queryformat '%{INSTALLTIME:date} : %{NAME}\n'

