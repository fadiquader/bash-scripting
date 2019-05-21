#!/bin/bash
# Author: Fadi Quader
# Description: Arrays

# Declaration
# ARR=(one, two, three)

# Calling
# ${Array[0]} # item#1
# ${Array[1]} # item#2

# all items in array ${ARR[@]}

# All items in array delimited by first character of ifs
# ${ARR[*]}
# All indices in the array ${!Arr[@]}

# Number of items in the array ${#Arr[@]}

# Length of item zero ${#Arr[0]}

# Ex/ Read date from users and make them option to recheck if provided data are correct


echo -n "Enter your name: "
read NAME
echo -n "Enter your age: "
read AGE
echo -n "Enter your department: "
read DEP

echo you have entered following
echo "Name: $NAME"
echo "Age: $AGE"
echo "Dep: $DEP"

CHECK=0
while [ $CHECK -eq 0 ]
do
    echo -n "Is thar correct? [y/n]"
    read ANSWER

    case $ANSWER in
    Y|y )
    echo "Name:     $NAME" >> empl.txt
    echo "Age:      $AGE" >> empl.txt
    echo "Dep:      $DEP" >> empl.txt
    echo "Saved"

    CHECK=1
    ;;
    N|n )
    echo "Nothing was saved, run the script again if you want to add date"
    CHECK=1
    ;;
    * )
    echo "Wrong answer provided"
    ;;

    esac
done
