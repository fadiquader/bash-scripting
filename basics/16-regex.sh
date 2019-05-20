#!/bin/bash
# Author: Fadi Quader
# Description: Regular expressions

# . => any single character // b.ok = book
# * => zero or more characters // c*ol = cl, col, cool,
# ^ => start of the line marker
# $ => End of the line marker
# [] => Any one of characters enclosed in [] // coo[kl] = cook or cool
# [-] => Any character withing the range // file[1-3] = file1, file2, file3
# [^] => Any character except those enclosed in brackets // file[^012] = file3, f4, ...
# ? => Preceding item must match one or zero times // colou?r = color, colour
# + => Preceding item mush match one or more times // file1+ = file1, file11, file111 NOT file
# {n} => Preceding item mush match n times // [0-9]{3} = 111, any three digits characters
# {n, m} => Min. and Max. number of times the preceding item should match //  [0-9]{1,3} = 1, 12, 132, but NOT 12434
# \ => Escape character - escape any of the special character, ignore the meaning of them // Hell\.o = hell.o not helllo

# [:upper:] => Uppercase character
# [:lower:] => Lowercase character
# [:alpha:] => Alphabetic character
# [:digit:] => Number character
# [:alnum:] => alpha + digit character
# [:space:] => Whitespace character character (space, tab, newline)
# [[ $STRING == pattern ]] => [[ $STRING == file[0-9].txt ]] , [[ $STRING == rich* ]]

# [[ $STRING =~ $REGEX ]]
# REGEX="http://.*\.jpg
# ${BASH_REMATCH[0]} => part of the STRING which match REGEX e.g http://images.jpg
# ${BASH_REMATCH[1]} => part of the REGEX which is enclosed in first parentheses e.g REGEX="http://(.*)\.jpg" would represents as images
