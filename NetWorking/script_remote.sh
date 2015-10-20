#!/bin/sh

username="user"
script="check_server.sh"

cat $script | ssh ${username}@192.168.2.4 "sh"
cat $script | ssh ${username}@192.168.2.5 "sh"
cat $script | ssh ${username}@192.168.2.6 "sh"

