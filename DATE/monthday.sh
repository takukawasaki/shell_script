#!/bin/sh


tommorrow=$(date -v+1d +%d)

if [ $tommorrow = "01" ];
then
    echo "last day of the month"
else
    echo "doom!!!"
fi

