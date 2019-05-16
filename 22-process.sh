#!/bin/bash
# Author: Fadi Quader
# Description: Process management

sleep 10 &
# fetch sleep process and kill it
# -v => exclude
ps -ef | grep "sleep" | grep -v grep | awk '{print $2}' | xargs -I{} kill {}

sleep 10 &
PS_IDS=$(ps -ef | grep "sleep" | grep -v grep | awk '{print $2}')
echo process
echo $PS_IDS

for pid in $PS_IDS
do
    kill $pid
done
