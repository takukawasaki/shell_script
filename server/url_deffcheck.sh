#!/bin/sh

url="http://realm00.com"

newfile="new.dat"
oldfile="old.dat"

curl -so "$newfile" "$url"

cmp -s "$newfile" "$oldfile"

if [ $? -ne 0 ]
then
    date_str=$(date '+%Y/%m/%d %H:%M:S')

    echo "[$date_str] some changes"
    echo "target url: $url"

    echo "warning"
fi


mv -f "$newfile" "$oldfile"

