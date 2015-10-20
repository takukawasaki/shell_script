#!/bin/sh

if [ $# -eq 2 ]
then
    echo "usage: <script> pattern directory"
fi



#for BSD or Mac
#find . -type f -print | xargs -0 grep $1
grep -ri $1 $2

#for Linux
#find . -type f -print | xargs grep $1 

