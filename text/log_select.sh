#!/bin/sh

logfile="access_log"

if [ ! -f "$logfile" ]
then
    echo "File does not exists: $logfile" >&2
    exit 1
    
fi


awk '$(NF-1)==404 {print $7}' "logfile" > "${logfile}.404"
   
