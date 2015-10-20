#!/bin/sh

count=0

server="127.0.0.1"

trap 'echo "Try count: $count"' USR1

while [ "$count" -le 1000 ]
do
    count=$(expr $count + 1)
    nc -zv "$server" 8000
    sleep 1
done


    

