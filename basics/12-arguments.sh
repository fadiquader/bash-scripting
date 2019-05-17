#!/bin/bash
# Author: Fadi Quader
# Description: Arguments

# $0 - script name
echo "Script name: $0"

# $1 - first argument
echo "First command: $1"

# $2 - second argument
echo "Second command: $2"

# $n - nth argument

# $? - exist status, 0 is ok

# "$@" - all arguments, expands as "$1 $2 $3" and so on
echo "All arguments with \$@: $@"

# "$*" - all arguments, expands as one string "$c1$c2$3", where c is the first character of IFS (internal field separator), First character of IFS is usually space
echo "All Arguments with \$*: $*"

# $# - arguments count
echo "All arguments count: $#"
