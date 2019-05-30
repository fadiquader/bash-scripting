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
# NF (number of fields)
# NR (number of records)
# $1, $2, ..(specific fields (column))

# awk 'BEGIN{print "HELLO"}' # prints before processing any line
# awk '{print "Hello"}' # main body which processes each provided line
# awk 'END{print "HELLO"}' # run only when processes all line

echo "one two three four" | awk '{print "hello"}'
cat file1.txt | awk '{print "Hello"}'

# cat 'BEGIN{print "BEGIN part"} {print "Hello"} END{print "END part"}' file1.txt

echo "one two three" | awk '{print $0 " Number of fields in this line " NF}'
echo "one two three" | awk '{print $0 " Number of records " NR}'
echo "one two three" | awk '{print $(NF-1)}'
cat file1.txt | awk '{print $2}'
cat file1.txt | awk '/that/ {print $1}'
cat file1.txt | awk 'END{print NF}'
cat file1.txt | awk '$1 != "that"'

# FS (Field separator)
echo "one two three four" | awk 'BEGIN{FS="two"} {print $1 " " $2}' # field two now is field separator
echo "one two three four" | awk -F "two" '{print $1}'

# awk records are default separated by lie, but you can change that
cat file1.txt | awk 'BEGIN{RS="is"} {print $0}'
cat file1.txt | awk 'BEGIN{RS="is"} {print NR}'

# AWK - variables
# a=1 (any variable name) # a++, a--, a=a+1, ...
# RS="\n"
# FS=":"

cat file1.txt | awk 'BEGIN{RS="\n"; count=0} {count++} END{print NR, count}'

# awk - if statement
cat file1.txt | awk '{if ($2 == "si") print $0}'
cat file1.txt | awk -F "#" '{if ($2 == "si") {print $0} else {print $1}}'

# For loop
# for (initialization; condition; increment) {}
awk 'BEGIN{for(i=1; i<=10;i++){ print "Hello", i}}'

cat file1.txt | awk '{ for (i=1; i<=NF; i++){
print "Field", i, $i
}}'
