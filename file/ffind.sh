#!/bin/sh

bzcat $HOME/.fastfind.bz2 | egrep "$1"
