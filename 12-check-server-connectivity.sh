#!/bin/bash
# Author: Fadi Quader
# Description: Check server connectivity

# c1 => ping once

P_HOST="127.0.0.1" &> /dev/null

ping -c1 $P_HOST

if [ $? -eq 0 ]
then
    echo OK
else
    echo Not OK
fi
