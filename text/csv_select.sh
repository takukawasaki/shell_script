#!/bin/sh

csvfile="data.csv"

if [ -z "$1" ] #-z check exists
then
    echo "Please set ID" >&2
fi

if [ ! -f "$data.csv" ]
then
    echo "csv does not exists: $csvfile" >&2
    exit 1
fi

while read line
do
    id=$(echo $line | cut -f 1 -d ',')
    name=$(echo $line | cut -f 2 -d ',')
    score=$(echo $line | cut -f 3 -d ',')

    if [ "$1" = "$id" ]
    then
        echo "$name"
    fi
done < $csvfile


    


