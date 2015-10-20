#!/bin/sh

message="Unknown ERROR!"

strings -f /home/bin/* | grep $message

for filename in /usr/local/bin/*
do
    echo $filename
    strings $filename | grep $message
done


