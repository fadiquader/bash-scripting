#!/bin/bash
# Author: Fadi Quader
# Description: if-then

$condition = 2
if [ $condition -eq 1 ]
then
    # todo code
else
    # todo code
fi

# Another format
if [ $condition -eq 1 ]; then
    # todo code
elif [ $condition -eq 2 ]; then
    # todo code
else
    # todo code
fi

# Operands (numbers) => -eq (equal to), -ne, -gt (greater than), -lt (less than), -ge, -le

# And with if statement
if [ $condition -lt 10 ] && [ $condition -gt 1 ]; then
fi

# Or with if statement
if [ $condition -lt 10 ] || [ $condition -gt 1 ]; then
fi

# Negative if statement
if [ ! $condition -lt 10 ]; then
fi

# String comparison
# [ "$str1" = "$STR2" ]
# [ "$str1" != "$STR2" ]
# to not using "" user => [[ $STR1 = $STR2 ]]
# test if string is empty [ -z "$STR!" ]
# test if string is non-empty [ -n "$STR!" ]
# Alphabetically compare two string [[ $STR1 > $STR2 ]]
# Wildcards [[ $STR1 =~ $regex ]]

# Examples
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
