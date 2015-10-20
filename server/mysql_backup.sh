#!/bin/sh

DBHOST="192.168.11.5"
DBUSER="backup"
DBPASS="PASSWORD"
DBNAME="hamilton"

BACKUP_DIR="/home/user1/backup"

BACKUP_ROTATE=3

MYSQLDUMP="/usr/bin/mysqldump"

if [ ! -d "$BACKUP_DIR" ]
then
    echo "directory does not exists: $BACKUP_DIR" >&2

    exit 1
fi

today=$(date '+%Y%m%d')

$MYSQLDUMP -h "${DBHOST}" -u "{DBUSER}" -p"{DBPASS}" "${DBNAME}" > \
           "${BACKUP_DIR}/${DBNAME}-${today}.dump"

if [ $? -eq 0 ]
then
    gzip "${BACKUP_DIR}/${DBNAME}-${today}.dump"
    find "$BACKUP_DIR" -name "${DBNAME}-*.dump.gz" -mtime +${BACKUP_ROTATE} | \
        xargs rm -f
else
    echo "backup fails: ${BACKUP_DIR}/${DBNAME}-${today}.dump"
    exit 2
fi


        
