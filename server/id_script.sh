#!/bin/sh

script_user="user"

if [ $(id -nu) = "$script_user" ]
then
    ./batch_program
else
    echo "[ERROR] $script_user ユーザーで実行してください" >&2
    exit 1
fi


