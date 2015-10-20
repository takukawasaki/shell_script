#!/bin/sh

commname="/home/user1/bin/calc"

threshold=3

count=$(ps ax -o command | grep "$commname" | grep -v "^grep" | wc -l | tr -d ' ')

if [ "$count" -ge "$threshold" ]
then
    echo "[ERROR] process $commname are currently run some process($count)" >&2
    /home/user1/bin/alert.sh
fi

