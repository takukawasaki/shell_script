#!/bin/sh

filesize=1024
tmpdata="tmpdata.tmp"
timefile="timecount.tmp"

dd if=/dev/zero of="$tmpdata" count=$filesize bs=1024 2> /dev/null

server="60.43.252.144"
user="stck2750"
password="stck2750"

echo "Filesize: $filesize (KB)"
echo "FTP Server: $server"

(time -p ftp -n $server) << __EOT__ 2> $timefile
time ftp -n "$server" << __EOT__
user "$user" "$password"
binary
put "$tmpdata"
__EOT__

realtime=$(awk '/^real / {print $2}' "$timefile")
speed=$(echo "${filesize}/${realtime}" | bc)

echo "Transfer Speed: $speed (KB/sec)"




