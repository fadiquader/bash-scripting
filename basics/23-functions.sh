#!/bin/bash
# Author: Fadi Quader
# Description: Functions

# function_name(){}

# function function_Name {
# }

function hello {
    # $name=$1 # you change global value
    local name=$1
    echo hello $name
    return 11
}


hello fadi
echo "Return value: $?"
