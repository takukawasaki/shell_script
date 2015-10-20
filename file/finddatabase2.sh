#!/bin/sh

find / -ls | cut -c1-7,67 | bzip2 > .fastfind.bz2

