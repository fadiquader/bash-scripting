#!/bin/bash
# Author: Fadi Quader
# Description: Defining variables

p=pwd
l=ls
wi=whoami
d=date
c=`ca 2019`

echo Run variables task
echo
$p
$l
$wi
$d
$c

# Math calculation
# 1) let
NUMBER=7
let RESULT=NUMBER+5 # no space around math operands
let NUMBER++
let NUMBER+=5
# 2) (())
RESULT=$((NUMBER + 5)) # space around math operands
# 3) []
RESULT=$[ NUMBER + 5 ] # space around math operands
# 4) expr
RESULT=`expr $NUMBER + 5` or $(expr $NUMBER + 5) # space around math operands
# 5) bc - Operate for floating point
RESULT=`echo "$NUMBER*1.9" | bc`
