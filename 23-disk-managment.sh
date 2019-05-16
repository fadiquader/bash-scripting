#!/bin/bash
# Author: Fadi Quader
# Description: Disk management

a=`df -h | egrep -v "tmpfs|devtmpfs" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1`

for i in $a
do
    if [ $i -ge 50 ]
    then
        echo Check space $i `def -h | grep $i`
    fi
done

