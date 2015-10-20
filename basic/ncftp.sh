#!/bin/sh

hostname="realm00.com"
/bin/echo -n "connect to my ftp"
echo

/bin/echo -n "Username:"

stty -echo
read username
stty echo

echo

/bin/echo -n "Password:"

stty -echo

read password

stty echo

echo

ncftp -u $username -p ${password} ${hostname}

