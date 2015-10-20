#!/bin/sh

year=$(date "+%Y")

logfile="/var/log/apache2/access.log-"

mod1=$(expr $year % 4)
mod2=$(expr $year % 100)
mod3=$(expr $year % 400)

if [ $mod1 -eq 0 -a $mod2 -ne 0 -o $mod3 -eq 0 ];
then
    echo "leap year: $year"
    ls ${logfile}${year}0229
else
    echo "not leap year: $year"
    ls ${logfile}${year}0228

fi


