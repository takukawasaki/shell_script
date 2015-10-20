#!/bin/sh

targetdir=~/

filecount=$(find $targetdir -maxdepth 1 -type f -print | wc -l)
dircount=$(find $targetdir -maxdepth 1 -type d -print | wc -l)

dircount=$(expr $dircount - 1)

echo "dir: $targetdir"
echo "file count: $filecount"
echo "dir count: $dircount"
