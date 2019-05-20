#!/bin/bash
# Author: Fadi Quader
# Description: for-loop


for i in 1 2 3 4
do
    echo "Welcome $i times"
done

clear

for i in "eats runs jumps plays"
do
    echo "See Fadi $i"
done

for FILE in *.txt
do
    echo $(date) >> $FILE
    ps -ef | head -5 >> $FILE
    echo "================" >> $FILE
done

# Reading Files with while loop
$FILENAME=file.txt

while read line
do
    echo $line
done < "$FILENAME"

# Another way
cat $FILENAME |
while read line
do
    echo $line
done
