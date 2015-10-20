#!/bin/sh

if [ -z "$1" ];
then
    echo "set ip addr: " >&2
    exit 1;
    
fi

for ipaddr in $(sed "s/%ADDR_HEAD%/$1/" ping_target.lst)
do
    ping -c 1 $ipaddr > /dev/null 2>&1

    if [ $? -eq 0 ];
    then
        echo "[success] ping -> $ipaddr"
    else
        echo "[failed]  ping -> $ipaddr"
    fi
done


