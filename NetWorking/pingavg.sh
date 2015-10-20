#!/bin/sh

ipaddr="192.168.24.1"
count=5

echo "Ping to : $idaddr"
echo "Ping count: $count"
echo "Ping average[ms]"

ping -c $count $ipaddr > ping.$$

sed -n "s/^.*time=\(.*\) ms/\1/p" ping.$$ |\
    awk '{sum+=$1} END{print sum/NR}'

rm -f ping.$$


