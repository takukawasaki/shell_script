#!/bin/sh

server="60.43.252.144"

user="xxxxx"

password="xxxxxxx"

dir=/

filename=".profile"

ftp -n $server << __EOT__
user $user $password
binary
cd $dir
get $filename
__EOT__



