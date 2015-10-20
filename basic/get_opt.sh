#!/bin/sh

a_flag=0
separator=""

while getopts "ap:" option
do
    case $option in
        a)
            a_flag=1
            ;;
        p)
            separator="$OPTARG"
            ;;
        \?)
            echo "Usage: opt_chg [-a] [-p separator] target_dir" 1>&2
            exit 1
            ;;

    esac
done


shift $(expr $OPTIND - 1)
path="$1"
if [ $a_flag -eq 1 ];

then
    ls -a -- "$path"
else
    ls -- "$path"
fi

if [ -n "$separator" ];
then
    echo "$separator"
fi


            
         
