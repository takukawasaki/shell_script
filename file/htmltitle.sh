#!/bin/sh

for htmlfile in *.html
do
    fname=$(basename $htmlfile .html)
    sed -n "s/^.*<title>\(.*\)<\/title>.*$/\1/p" $htmlfile > ./${fname}.txt

done

    
