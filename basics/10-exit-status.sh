#!/bin/bash
# Author: Fadi Quader
# Description: Exit status

# 0 => OK or Successful
# 1 => Minor problem
# 2 => Serious trouble
# 3-255 => Everything else

pwd
echo "Status: $?"
pwdd
echo "Status: $?"

ls -l ./fa.sh

if [ $? -eq 0 ]
then
    echo "File Exists"
else
    echo "File doesn't exist"
fi
