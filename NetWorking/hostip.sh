#!/bin/sh

host=$1

echo "Address of $host"

echo "================"

host $host | \
    awk '/has address/ {print $NF,"IPv4"} \
         /has IPv6 address/ {print $NF,"IPv6"}'

