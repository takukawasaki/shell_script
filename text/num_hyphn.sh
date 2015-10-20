#!/bin/sh

d_flag=0

while getopts "d" option
do
    case $option in
        d)
            d_flag=1
            ;;
        \?)
            exit 1
            ;;
    esac
done

shift $(expr $OPTIND - 1)
filename="$1"

if [ ! -f "$filename" ]
then
    echo "filedoes not exists: $filename" >&2

    exit 1
fi

if [ "$d_flag" -eq 1]
then
    awk '{print $1}' "$filename" | grep '^[0-9]\{3\}-[0-9]\{4\}$' |
    sed "s/-//"

else
    awk '{print $1}' "$filename" | grep '^[0-9]\{7\}$'            |
    sed "s/\(...\)/\1-/"
fi
