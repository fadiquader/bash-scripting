#!/bin/bash
# Author: Fadi Quader
# Description: Directory assignment

cd /etc
for DIR in *
do
    # -c =>  a count
    CHK=$(grep -c "/etc/$DIR" /etc/passwd)
    if [ $CHK -ge 1 ]
    then
        echo $DIR is assigned to a user
    else
        echo $DIR is NOT assigned to a user
    fi
done
