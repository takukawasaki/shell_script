#!/bin/sh

DIR=/var/tmp

#function
ls_home()
{
    #define DIR as local variable
    local DIR
    DIR=~/$1
    echo "directory: $DIR"
    ls $DIR
    
}

ls_home $1

echo "directory: $DIR"
ls $DIR
