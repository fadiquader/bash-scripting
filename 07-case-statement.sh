#!/bin/bash
# Author: Fadi Quader
# Description: case-statement

echo "Please choose one oh the questions below"
echo "a = Display date time"
echo "b = List file and directories"
echo "c = List users logged in"
echo "d = Check system uptime"
read choices

case $choices in
a) date;;
b) ls;;
c) who;;
d) uptime;;
*) echo Invalid choice - Bye
esac
