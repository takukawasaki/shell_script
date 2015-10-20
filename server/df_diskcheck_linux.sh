#!/bin/sh

used_limit=90

tmpfile="df.tmp.$$"

df -P | awk 'NR >= 2 {print $5,$6}' > "$tmpfile"

while read percent mountpoint
do
    percent_val=${percent%\%}

    if [ $"percent_val" -ge "$used_limit" ]
    then
        date_str=$(date '+%Y/%m/%d %H:%M:%s')

        echo "[date_str] Disk Capacity Alert: $mountpoint ($percent used)"
        /home/user1/bin/alert.sh

    fi

done < "$tmpfile"

rm -f "$tmpfile"


