#!/bin/bash
# Author: Fadi Quader
# Description: SED Practical

sed -n '/si/p' file1.txt # p => print
sed -n '3p' file1.txt # third line
sed -n '1,3p' file1.txt # first to third line
sed -n '1,$p' file1.txt # number of last line

sed '/si/a' contact: tel: 234 3232' file1.txt # appending after each  matched line

sed '1i Employees list' file1.txt # before li => first line

sed '/si/d' file1.txt # d => remove, without changing the actual file
sed '/\tsi/d' file1.txt # \t => tab

sed '/[[:space:]]si/d' file1.txt # file line is present, and only lines mached lines

sed '/si/c Hidden information' file1.txt # change pattern with

sed 'is/q2' file1.txt # q => quit, 2 => exist status

sed -ne 'si/p' -ne '/is/q2' file1.txt # p => print, q => quit, 2 => exist status

sed -e '/is/a after is' -e '/is/i before is' file1.txt # prepend after line, append after line

sed -ni '/si/p' file1.txt # no output, we are placing output of sed directly to input file and not to the screen

sed -i '/si/a after si' file1.txt # new line after 'si' pattern, inserted into file1

sed '/name/e echo -n "Date: "; date' file1.txt # run commands in sed, you can specify line number 1e => first line
sed '1e echo -n "Date: "; date' file1.txt # 1e => first line
sed '1,$e echo -n "Date: "; date' file1.txt # 1 to the last line
sed 's/is/haha/' file1.txt
sed '2s/is/haha/' file1.txt # second line
sed '1,$s/is/haha/' file1.txt

sed -i '1,$s /is/Haha' # modify the file

sed 's/[3-0][[:digit]]//***/' # hide number ing range 30 - 99
sed 's/is/& & &/' file1.txt => duplicate is three times
