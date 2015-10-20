#!/bin/sh

logdir="some_dir"

find $logdir -name "*.log" -mtime +364 -print | xargs rm -fv

