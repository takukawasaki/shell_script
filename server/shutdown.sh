#!/bin/sh

other_user=$(who | wc -l)

if [ "$other_user" -ge 2 ]
then
    echo "[ERROR] other login user exists!!" >&2
    exit 1
fi


comname="/usr/libexec/mysqld"
ps ax -o command | grep -q "^$comname"
if [ $? -eq 0 ]
then
    echo "[ERROR] stop shutting down proccess $comname is working" >&2
    exit 2
fi

shutdown -h now

