#!/bin/sh

logdir=/var/log/

find $logdir -name "*.log" -print | xargs grep "ERROR" /dev/null



