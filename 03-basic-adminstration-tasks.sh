#!/bin/bash
# Author: Fadi Quader
# Description: Run administration tasks

echo  "run administration linux commands"
echo
top | head -10
df -h
free -m
date
uptime
iostat
