#!/bin/sh

ipaddr="192.168.24.1"
macaddr=$(arp -an | awk "/\($ipaddr\)/ {print \$4}")

if [ -n "$macaddr" ];
then
    echo "$ipaddr -> $macaddr"
else
    echo "$ipaddr is not in arp cache"
fi

