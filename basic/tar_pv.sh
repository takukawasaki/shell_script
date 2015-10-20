#!/bin/sh

DATA_DIR=~/Desktop/tmp

cd $DATA_DIR

tar cf - *.pdf | /usr/local/bin/pv | gzip > archive.tar.gz
rm *.pdf

