#!/bin/bash
# Author: Fadi Quader
# Description: Read file lines

# Arguments check
if [ $# -ne 1 ]; then
    echo "Exactly one argument is needed, run: $0 file-path"
    exit 1
fi

# check if provided argument is a file
if ! [ -f "$1" ]; then
    echo "File does not exists"
    exit 2
fi

FILENAME=$1
COUNT=0

while read line
do
    echo "$COUNT: $line"
    let COUNT++
done < "$FILENAME"
echo $COUNT
COUNT=0

# another way
cat "$FILENAME" |
while read line
do
    echo "$COUNT: $line"
    let COUNT++
done
