#!/bin/bash
# Author: Fadi Quader
# Description: Filesystem related tests

# [ -e $VAR]  => True if variable holds an existing file/directory
# [ -f $VAR ] => True if variable holds and exiting regular file
# [ -d $VAR ] => True if variable holds an existing directory
# [ -x $VAR ] => True if variable is an executable file
# [ -L $VAR ] => True if variable holds the path of a symlink
# [ -r $VAR ] => True if variable is a readable file
# [ -w $VAR ] => True if variable holds file that is writable

# argument check
if [ $# -ne 1 ]; then
    echo "Provide exactly one argument"
    exit 1
fi

# variables assignment
FILE=$1

# check if the files exists
if [ -f $FILE ]; then
    if [ -r $FILE ]; then
        echo "READABLE"
    fi
    if [ -w $FILE ]; then
        echo "WRITABLE"
    fi
    if [ -x $FILE ]; then
        echo "EXECUTABLE"
    fi
fi
