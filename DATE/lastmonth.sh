#!/bin/sh

logdir=/var/log/apache2

thismonth=$(date '+%Y/%m/15 00:00:00')

last_YYYYMM=$(date -v-1m "+%Y%m")
#日付の差　-v-1m　前月


tar cvf ${last_YYYYMM}.tar $logdir/access.log-${last_YYYYMM}*


