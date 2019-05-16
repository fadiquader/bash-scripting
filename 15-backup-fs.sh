#!/bin/bash
# Author: Fadi Quader
# Description: Backup files system


tar cvf /tmp/backup.tar /etc /var

# compress
gzip /temp/backup.tar

# -1 => if it created today
find /temp/backup.tar.gz mtime -1 -type f -print &> /dev/null

if [ $? -eq 0 ]
then
    echo Backup was created
    ech Archiving Backup /tmp/backup.tar.gz
else
    echo Backup failed
fi
