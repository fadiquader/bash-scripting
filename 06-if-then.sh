#!/bin/bash
# Author: Fadi Quader
# Description: if-then

count=100
if [ $count -eq 100 ]
then
    echo Count is 100
else
    echo count is not 100
fi

clear

if [ -e ./05-input-output.sh ]
then
    echo "File exists"
else
    echo "File doesn't exist"
fi

clear

a=`date | awk '{print $1}'`
if [ "$a" == Mon ]
then
    echo "Today is $a"
else
    echo "Today is not Monday"
fi

clear

echo "What is your name?"
read n
echo "Hello $n"
echo "Do you like woeking in IT? (y/n)"
read Like
if [ "$Like" == y ]
then
    echo "You are cool"
elif [ "$Like" == n]
then
    echo "You should try IT, it'a good field"
else
    echo "You didn't select the answer"

fi
