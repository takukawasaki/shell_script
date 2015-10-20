#!/bin/sh

if [ -z "$1" ];
then
    echo "set IP Address" >&2

    exit 1
fi

case "$1" in
    192.168.2.*|192.168.10.*)
        ping -c 1 "$1" > /dev/null 2>&1

        if [ $? -eq 0 ];
        then
            echo "Ping to $1 : [OK]"
        else
            echo "Ping to $1 : [NG]"
        fi
        ;;
    *)
        echo "$1 is not test target" >&2
        exit 2
        ;;
esac


    
