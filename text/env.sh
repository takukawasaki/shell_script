#!/bin/sh

envname="TMPVAR"

env | cut -f 1 -d "=" > env.lst

grep -q "^${envname}$" env.lst

if [ $? -eq 0 ];
then
    echo "env var is set"
    ./start.sh
else
    echo "env var is not set"
fi


