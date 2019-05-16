#!/bin/bash
# Author: Fadi Quader
# Description: List users logged in by date

# -fn0 => live incoming traffic (latest incoming messages)
tail -fn0 /var/log/system.log | while read line
CONTACTS="fadi.quader@gmail.com, fadiqua@gmail.com"
do
    # egrep => grep multiple keys
    echo $line | egrep -i "error|invalid|fail|lost|shut|down|offline"
    if [ $? = 0 ]
    then
        echo $line >> /tmp/filtered-system-logs
        cat /tmp/filtered-system-logs | sort | uniq | mail -s "sysLog messages" $IT
        rm /tmp/filtered-system-logs
    fi
done

# to run it in background run: ./file-path &
# bring it back run: fg
