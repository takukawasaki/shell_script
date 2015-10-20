#!/bin/sh

data=~/data.file

if [ -f "$data" ]
then
    #echo "$data"
    :
else
    echo "file does not exists: $data" >&2
    exit 1
    
fi




