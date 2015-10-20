#!/bin/sh

tmpfile="tmp.$$"

date > $tmpfile

sleep 2

cat $tmpfile
rm -f $tmpfile



