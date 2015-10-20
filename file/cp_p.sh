#!/bin/sh


backupdir=~/Desktop/pd/log
cd ~/Desktop


while getopts "a" option
do
    case $option in
        a)
            cp -a hh $backupdir
            exit
            ;;
    esac
done

cp -R pd $backupdir


