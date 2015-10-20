#!/bin/sh

logdir=/var/log/apache2

thismonth=$(date '+%Y/%m/15 00:00:00')

last_YYYYMM=$(date -d "$thismonth - 1 month ago" '+%Y%m')

tar cvf ${last_YYYYMM}.tar $logdir/access.log-${last_YYYYMM}*


