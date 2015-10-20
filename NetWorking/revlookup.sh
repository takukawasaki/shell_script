#!/bin/sh

while read ipaddr
do
    revlookup=$(host "$ipaddr")

    if [ $? -eq 0 ];
    then
        /bin/echo -n "$ipaddr,"
        echo "$revlookup" | awk '{print $NF}' | sed 's/\.$//'
    else
        echo "$ipaddr,"
    fi

done < $1


