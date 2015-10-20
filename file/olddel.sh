#!/bin/sh

log1=log1.log
log2=log2.log

filecheck(){
    if [ ! -e $1 ];
    then
        echo "ERROR: File $1 does not exitsts" >&2
        exit 1;
    fi
}



###
filecheck $log1
filecheck $log2

if [ $log1 -nt $log2 ];
then
    echo "[$log1]->newer,[$log2]->older"
    #  rm $log2
else
    echo "[$log2]->newer,[$log1]->older"
    rm $log1
fi

