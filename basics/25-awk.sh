#!/bin/bash
# Author: Fadi Quader
# Description: AWK

# Searches files for lines that contain certain patterns
# Perform operation described in AWK body on line with certain pattern.
# Performs operation described in AWK on chosen line
# awk 'program_you_will_write' input-file1 input-file2

# echo "one two three" | awk 'BEGIN{code_in_BEGIN_section}{code_in_main_body_section}END{code_in_END_section}'

# AWK commands
# print, if-else, for loop
# NG (number of fields)
# NR (number of records)
# $1, $2, ..(specific fields (column))

# awk 'BEGIN{print "HELLO"}' # prints before processing any line
# awk '{print "Hello"}' # main body which processes each provided line
# awk 'END{print "HELLO"}' # run only when processes all line

echo "one two three four" | awk '{print "hello"}'
cat file1.txt | awk '{print "Hello"}'

# cat 'BEGIN{print "BEGIN part"} {print "Hello"} END{print "END part"}' file1.txt

echo "one two three" | awk '{print $0}'
cat file1.txt | awk '{print $2}'
cat file1.txt | awk '/that/ {print $1}'
cat file1.txt | awk '$1 != "that"'

