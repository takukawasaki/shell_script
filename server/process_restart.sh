#!/bin/sh

commname="/usr/sbin/httpd"

start="service httpd start"

count=$(ps ax -o command | grep "$commname" | grep -v "^grep" | wc -l)

if [ "$count" -eq 0 ]
then
    date_str=$(date '+%Y/%m/%d %H:%M:%S')
    echo "[$date_str] process $commname is not found" >&2
    echo "[$date_str] process $commname restart" >&2

    $start
fi


