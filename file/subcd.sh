#!/bin/sh

(
    echo "Archive: /var/tmp/archive.tar"
    cd /var/tmp
    tar cvf Archive.tar *.txt
    
)

echo "Start: command.sh"
./command.sh

