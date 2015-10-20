#!/bin/sh

tmpfile="sort.lst"

if [ ! -f "$1" ];
then
    echo "set ID list  " >&2

    exit 1;
fi

rev "$1" | sort | rev > $tmpfile

./report.sh $tmpfile

rm -f $tmpfile

