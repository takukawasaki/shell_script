#!/bin/sh

config=uptime.log

bak_filename=$config.$(date '+%Y%m%d')

if [ -e $bak_filename ];
then
    bak_filename=$config.$(date '+%Y%m%d%H%M.%S')
fi

cp -v $config $bak_filename

