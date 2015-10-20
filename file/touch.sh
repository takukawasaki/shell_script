#!/bin/sh

timestamp="201507230123.45"

touch -t $timestamp app1.log
touch -c -t $timestamp lock.tmp
