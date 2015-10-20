#!/bin/sh

cd ~

find / -print | bzip2 > .fastfind.bz2

