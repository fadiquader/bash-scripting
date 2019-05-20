#!/bin/bash
# Author: Fadi Quader
# Description: Wildcards

# ? => Single character
# * => Any number of characters (inc zero)
# [] => single character from range
# {} => Comma separated terms
# [!] => Any character not listed in brackets
# [:upper:] => Uppercase character
# [:lower:] => Lowercase character
# [:alpha:] => Alphabetic character
# [:digit:] => Number character
# [:alnum:] => alpha + digit character
# [:space:] => Whitespace character character (space, tab, newline)
# [[ $STRING == pattern ]] => [[ $STRING == file[0-9].txt ]] , [[ $STRING == rich* ]]

ls file[1-9].txt
ls file[1-9].{txt, img}
ls file{[5-9], [1][0-5]}.txt # 5 => 9 or 1[0 => 5]
ls *.t??

