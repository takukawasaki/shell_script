#!/bin/sh

prog=$(basename "$0")

if [ $# -ne 1 ];
then
    echo "Usage: $prog <string>" 1>&2
    exit 1
fi


echo "Start: $prog ..."
echo " Input Argument: $1"
echo "Stop: $prog"

