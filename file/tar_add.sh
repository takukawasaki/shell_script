#!/bin/sh

cd ~/Desktop/pd



archivefile=$(date +'%Y%m').tar

logfile=$(date +'%Y%m%d').log

tar rvf $archivefile log/$logfile

