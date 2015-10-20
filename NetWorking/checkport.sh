#!/bin/sh

ipaddr="60.43.252.144"
faillog="fail_port.log"

for port in 80 2222 8080 22
do
    nc -z $ipaddr $port
    if [ $? -ne 0 ];
    then echo "Failed at port: $port" >> "$faillog"
    fi

done

