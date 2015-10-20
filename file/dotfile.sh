#!/bin/sh


IFS_NOW=$IFS
IFS='
'
dir=~


for filename in $(ls -AF $dir)
do
    case $filename in
        .*/)
            echo "dot directory: $filename"
            ;;
        .*)
            echo "dot file: $filename"
            ;;
    esac
done

IFS=$IFS_NOW
echo $IFS
