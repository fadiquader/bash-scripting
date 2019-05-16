#!/bin/bash
# Author: Fadi Quader
# Description: do-while

count=0
num=10
while [ $count -lt 10 ]
do
    echo $num seconds left to stop process $1
    sleep 1
    num=`expr $num - 1`
    count=`expr $count + 1`
done
echo "Process is stopped, Bye"

clear

c=1
while [ $c -le 5 ]
do
    echo "Welcome $c times"
    (( c++ ))
done
