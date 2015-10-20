#!/bin/sh

if [ ! -f $1 ]
then
    echo "file does not exists: $1" >&2
    exit 1
fi


filename=${1%.*}

awk -F '{sum += $3} END{print sum / NR }' "$1" > ${filename}.avg



