#!/bin/sh

filename=target.txt

if [ ! -e $filename ] ;
then
    echo "ERROR: File does not exists." 1>&2
    exit 1
elif [ -h $filename ];
then
    #対象ファイルがシンボリックリンクならreadlink
    #コマンドで実態ファイルに処理をする
    sed -i.bak "s/Hello/Hi/g" "$(readlink $filename)"
else
    sed -i.bak "s/Hello/Hi/g" $filename
fi


    
