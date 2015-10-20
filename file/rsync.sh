#!/bin/sh

log_dir=.

backupdir=./bak

rsync -av $log_dir $backupdir

