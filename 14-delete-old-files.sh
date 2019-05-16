#!/bin/bash
# Author: Fadi Quader
# Description: Delete old files - 90 days

path=$(pwd)

find $path -mtime +90 -exec rm {} \;

# move
find $path -mtime +90 -exec mv {} {}.old \;
