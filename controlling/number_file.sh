#!/bin/sh

url_tmplat="http://www.example.com/download/img_%03d.jpg"

for i in $(seq 10)
do
    url=$(printf "$url_tmplat" $i)
    curl -O "$url"
done

