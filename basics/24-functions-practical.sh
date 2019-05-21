#!/bin/bash
# Author: Fadi Quader
# Description: Functions practical

function addition {
    local FIRST=$1
    local SECOND=$2
    let RESULT=FIRST+SECOND
    return $RESULT
}

# sum two numbers
echo -n "Enter first number: "
read FIRST
echo -n "Enter second number: "
read SECOND

addition $FIRST $SECOND
echo "RESULT: $?"
