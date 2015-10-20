#!/bin/sh

url="http://www.google.co.jp"

date_str=$(date '+%Y/%m/%d %H:%M:%S')

httpstatus=$(curl -s "$url" -o /dev/null -w "%{http_code}")
curlresult=$?

if [ "$curlresult" -ne 0 ]
then
    echo "[$date_str] HTTP warning: curl exit status[$curlresult]"


elif [ "$httpstatus" -ge 400 ]
then
    echo "[$date_str] HTTP status warning: HTTP status[$httpstatus]"

fi


    
