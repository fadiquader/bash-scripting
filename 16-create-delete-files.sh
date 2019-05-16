#!/bin/bash
# Author: Fadi Quader
# Description: Create/Update/Delete  files

# Create files
for i in {1..3}
do
    touch fa.$i.txt
    sleep 1
done

# Rename files
for filename in fa.*
do
    echo move $i
    mv $filename ${filename%.txt}.none
    sleep 2
done

# Remove files
for i in fa.*
do
    echo remove $i
    rm -f $i
    sleep 1
done

# loop over files and check if exist
FILES="/etc/passwd
/etc/group
/etc/shadow"

for file in FILES
do
    if [ ! -e $file ]
    then
        echo $file do exist
    fi
done
