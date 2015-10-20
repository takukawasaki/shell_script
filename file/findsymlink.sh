#!/bin/sh

find $HOME -type l -ls | awk '{print $(NF - 2) $(NF - 1) $NF}'
