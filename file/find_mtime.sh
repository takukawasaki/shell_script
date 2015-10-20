#!/bin/sh

logdir=.

find $logdir -name "*.log" -mtime -4 -mtime +1 -print

