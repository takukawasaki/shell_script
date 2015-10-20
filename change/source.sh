#!/bin/sh

. ./env.sh #. command read env.sh

nowtime
cp -i -v large_file.tar.gz "$WORK_DIR"
nowtime

