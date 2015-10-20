#!/bin/sh

cd ~/Desktop
pwd
#tar cvf archive.tar --exclude "ee.txt" pd
#--exclude ee.txt を除外
tar cvf archive.tar -X ~/Desktop/pd/exclude.txt pd/
# -X 複数指定　指定ファイル　ー＞~/Desktop/pd/exclude.txt
