#!/bin/bash
# Author: Fadi Quader
# Description: List users logged in by date

# List users by date
today=`date | awk '{print $1,$2,$3}'`
last | grep "$today" | awk '{print $1}'

# List users logged in by input

echo "Please enter day (e.g. Mon)"
read d
echo "Please enter month (e.g. Aug)"
read m
echo "Please enter date (e.g. 25)"
read da
last | grep "$d $m $da"
