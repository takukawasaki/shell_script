#!/bin/sh


username="uu"

server="192.168.1.5"


tar cvf - ./bak | ssh ${username}@${server} "cat > /app1.log.tar"


