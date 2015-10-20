#!/bin/sh

logfile="access_log"

if [ ! -f "$logfile" ]
then
    echo "File does not exists: $logfile" >&2
    exit 1
fi

awk '$6=="\"GET" {print $7}' "$logfile" | sort | uniq -c | sort -nr

