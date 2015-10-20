#!/bin/sh

dirA=dir1
dirB=dir2

( cd ${dirA}; find . -maxdepth 1 -type f -print | sort ) > tempfile1.lst
( cd ${dirB}; find . -maxdepth 1 -type f -print | sort ) > temfile2.lst

comm tempfile1.lst temfile2.lst

