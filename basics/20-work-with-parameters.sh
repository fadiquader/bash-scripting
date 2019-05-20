#!/bin/bash
# Author: Fadi Quader
# Description: Work with parameters

# -f or --file Will provide info about number of lines, words and characters
# -h or --help will provide usage message

while [ $# -gt 0 ]
do
    case "$1" in
    -h|--help )
        echo "USAGE $0 [-h] [--help] [-f file] [--file file]"
        shift
        exit 1
        ;;
    -f|--file )
        FILE=$2
        if ! [ -f "$FILE" ]; then
            print "FILE doesn't exists"
            exit 2
        fi
        LINES=`cat "$FILE" | wc -l`
        WORDS=`cat "$FILE" | wc -w`
        CHARACTERS=`cat "$FILE" | wc -m`
        echo "==FILE: $FILE =="
        echo "LINES: $LINES"
        echo "WORDS: $WORDS"
        echo "CHARACTERS: $CHARACTERS"
        shift # throw away parameter's argument
        shift # throw away parameter's value
    ;;
    * )
        echo "USAGE $0 [-h] [--help] [-f file] [--file file]"
        exit 1
    ;;
    esac
done
