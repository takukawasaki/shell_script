#!/bin/sh

tmpfile="hash.txt"
: > $tmpfile

#IFS に改行をいれ　区切り文字を改行に限定
iFS='
'
#テキストから１行ずつ読み込む
while read -r line
do
    /bin/echo -n "$line" | md5sum | awk '{print $1}' >> $tmpfile 
done < $1

paste -d,"$1" $tmpfile





