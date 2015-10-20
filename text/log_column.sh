#!/bin/sh

cd /var/log/apache2

access=access_log

if [ ! -f "$access" f]
then
    echo "file does not exists" >&2
    exit 1
fi

awk '{print $4,$5,$1}' "$access" > "${access}.lst"



