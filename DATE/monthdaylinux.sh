#!/bin/sh


tommorrow=$(date +%d -d '1 day')

if [ $tommorrow = "01" ];
then
    echo "last day of the month"
else
    echo "doom!!!"
fi

