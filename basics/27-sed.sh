#!/bin/bash
# Author: Fadi Quader
# Description: SED

#sed OPTIONS ...[script][inputfile]

#sed commands
# a text => append text after a line
# d => delete the pattern space
# i text => insert text before a line
# p => print the pattern space
# q => quit
# s/regexp/replacement/[flags] => substitude
# c => change

# command line options
# -n => disable automatic printing; sed only produces output when explicity told to via the p command
# -e script => add script
-r => use extended regular expressions rather than basic regular expression

# substitute
# s/regexp/replacement/[flags]
# echo "one five three" | sed 's/five/two' # => one two three
# echo " Hana is 50 years old" | sed 's/[[:digit:]]\+/***/' # Hana is *** years old, \+ means all
# g flag => globally
# echo "0 2 9 0 5" | sed 's/0/1/' # 1 2 9 0 5
# echo "0 2 9 0 5" | sed 's/0/1/g' # 1 2 9 1 5

