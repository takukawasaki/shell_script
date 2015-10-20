#!/bin/sh

url="http://www.realm00.com"

while true
do
    curl -so /dev/null "$url"

    if [ $? -eq 0 ]
    then
        echo "[check OK]"
    else
        echo "[check NG]"
    fi

    sleep 1
done

