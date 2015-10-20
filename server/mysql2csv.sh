#!/bin/sh

DBHOST="192.168.11.5"
DBUSER="USER"
DBPASS="PASS"
DBNAME="NAME"

MYSQL="/usr/bin/mysql"


csv_outdir="/home/user/output/"
sqlfile="/home/user/bin/select.sql"

if [ ! -f "$sqlfile" ]
then
    echo "file does not exists : $sqlfile" >&2
    exit 1
fi

if [ ! -d "$csv_outdir" ]
then
    echo "directory does not exitsts" >&2
    exit 1
fi

today=$(date '+%Y%m%d')

$MYSQL -h "${DBHOST}" -u "${DBUSER}" -p"${DBPASS}" -D "${DBNAME}" -N \
       < "$sqlfile" | tr "\t" "," > "${csv_outdir}/data-${today}.csv"

