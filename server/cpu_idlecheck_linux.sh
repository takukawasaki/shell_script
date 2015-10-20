#!/bin/sh


idle_limit=10.0

cpu_idle=$(mpstat 1 5 | tail -n 1 | awk '{print $NF}')

is_alert=$(echo "$cpu_idle < $idle_limit" | bc)

if [ "$is_alert" -eq 1 ]
then
    date_str=$(date '+%Y/%m/%d %H:%M:%S')

    echo "[$date_str] CPU %idle Alert: $cpu_idle (%)"

    alert.sh

fi


