#!/bin/bash
# Author: Fadi Quader
# Description: This script will add system inventory to database file

user=`whoami`
echo "Please enter hostname?"
read host
grep -q $host /home/$user/ps/database
if [ $? -eq 0 ]
then
    echo ERROR -- Hostname $host already exist
    exit 0
fi

echo "Please enter IP address?"
read IP
grep -q $IP /home/$user/ps/database
if [ $? -eq 0 ]
then
    echo ERROR -- IP $IP already exist
    exit 0
fi

echo "Please enter Description?"
read descr
echo $host $IP $descr >> /home/$user/ps/database

# Another example

echo Please enter hostname or IP address?
read hostip
grep -q $hostip /home/$user/ps/database
if [ $? -eq 0 ]
then
    sed -i '/'$hostip'/d' /home/$user/ps/database
    echo $hostip has been deleted
else
    echo Record $hostip does not exist
fi
