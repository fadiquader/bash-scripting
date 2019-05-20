#!/bin/bash
# Author: Fadi Quader
# Description: Backup * files

PROD=$(pwd)

# argument check
if [ $# -ne 1]; then
    echo "Only one argument is needed, run $0 destination path"
    exit 1
fi

# destination path check
DEST=$1
if [[ $DEST != */backup ]]; then
    echo "Wrong destination path, destination path must ends with /backup"
    exit 1
fi

# create destination folder
$DATE=$(dat +%Y-%m-%d_%H_%M_%S)
mkdir -p $DEST/$DATE

cp $PROD/*.sh $DEST/$DATE

# test exist status of copy command
if[ $? -eq 0]; then
    echo backup OK
else
    echo backup failed
fi
