#!/bin/bash
# Author: Fadi Quader
# Description: case-statement

echo "Please choose one oh the questions below"
echo "a = Display date time"
echo "b = List file and directories"
echo "c = List users logged in"
echo "d = Check system uptime"
echo "E/e for exit"
read choices

case $choices in
a) date;;
b) ls;;
c) who;;
d) uptime;;
E|e) exit 1;;
*) echo Invalid choice - Bye
esac
