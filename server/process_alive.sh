#!/bin/sh

comname="/usr/libexec/mysqld"

count=$(ps ax -o command | grep "$comname" | grep -v "^grep" | wc -l)

if [ $count -eq 0 ]
then
    echo "[ERROR] process not found $comname" >&2
    /home/user/bin/alert.sh
fi
