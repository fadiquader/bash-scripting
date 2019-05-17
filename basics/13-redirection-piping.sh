#!/bin/bash
# Author: Fadi Quader
# Description: Redirection and piping

# Every program we run on the command line automatically has three data streams
# 1) STDIN (0) - Standard input (data provided to program)
# 2) STDOUT (1) - Standard output (what program print, defaultly to the terminal)
# 3) STDERR (2) = Standard error (what error messages program print, defaultly to the terminal)

# > => it redirects stdout
cat file1.txt > out_file1.txt
# 1> = >

# 2> => it redirects STDERR
cat file1.txt 2> error_file1.txt

cat file1.txt 1> out_file1.txt 2> error_file1.txt

# &> => it redirects STDERR to STDOUT to out_err_file1.txt
cat file1.txt &> out_err_file1.txt
# 2>&1 => it redirects stderr stream to stdout stream

# &> = 2>&1
cat file1.txt > out_file1.txt 2>&1

# >> => append
cat file1.txt >> out_file1.txt

# < => provide as a STDIN
wc -l <file1.txt

# Piping |  sending data from on program to another

cat file.txt | wc -l # (wc -l <file.txt)
cat file.txt | head -5 | tail -3 | wc -l
