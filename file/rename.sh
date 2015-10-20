#!/bin/sh

for filename in *
do
    case $filename in
        *.htm | *.html)
            headname=${filename%.*}
            mv $filename $headname.txt
            ;;
    esac
done

