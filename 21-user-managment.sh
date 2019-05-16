#!/bin/bash
# Author: Fadi Quader
# Description: User management

echo "Please provide a username"
read u
# -q => silent mode, don't show anything on the screen
grep -q $u /etc/passwd

if [ $? -eq 0 ]
then
    echo "ERROR -- User $u already exists"
    exit 0
fi

useradd $u
echo "$u account has been created"

# Another example - assign uid
echo "Please provide user description"
read d
echo "Do you want to specify user ID (y/n)?"
read ynu
if [ $ynu == y ]
then
    echo "Please provide UID"
    read uid
    grep -q $uid /etc/passwd
    if [ $? -eq 0 ]
    then
        echo "ERROR -- User $uid already exists"
        exit 0
    else
        useradd $u -c $d -u $uid
    fi
    elif [ $ynu ==n ]
    then
    echo "We will assign a UID"
    useradd $u -c "$d"
fi

# Disable inactive users haven't been logged in for 90 days
a = `lastlog -b 90| tail -n+2 | greb 'test' | awk '${print $1}'`

for i in $a
do
    usermod -L $i
done
# or you can pass it an an argument
lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I{} usermod -L {}
