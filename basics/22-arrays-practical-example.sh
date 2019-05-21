#!/bin/bash
# Author: Fadi Quader
# Description: Arrays

ARRAY=($(ls *.txt))
COUNT=0
echo -e "FILE NAME \t WRITABLE"
for FILE in "${ARRAY[@]}"
do
    echo -n $FILE
    echo -n "[${#ARRAY[$COUNT]}]"
    if [ -w "$FILE" ]; then
        echo -e "\t YES"
    else
        echo -e "\t NO"
    fi
    let COUNT++
done
