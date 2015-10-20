#!/bin/sh


idle_limit=10.0

#BSD cpu_idle=$(iostat 1 6 | awk 'NR >= 4 {sum += $NF} END{print sum/5.0}')

cpu_idle=$(iostat 1 6 | awk 'NR >= 4 {sum += $(NF-3)} END{print sum/5.0}')

is_alert=$(echo "$cpu_idle < $idle_limit" | bc)

if [ "$is_alert" -eq 1 ]
then
    date_str=$(date '+%Y/%m/%d %H:%M:%S')

    echo "[$date_str] CPU %idle Alert: $cpu_idle (%)"

    echo "cpu warning: cpu idle may small"

fi


