#!/bin/bash
# Author: Fadi Quader
# Description: Files => display detail of a specific file

files conf
files -e conf
files -e conf --stats or -s
PA=`pwd`
files -l $PA -e pdf # e => extension

# ./files.sh [-l location] [--location location] [-e extension] [--extension extension] [-h] [--help]

function usage() {
    echo "USAGE: $0 [-l location] [--location location] [-e extension] [--extension extension] [-h] [--help]"
    echo "EXAMPLES: "
    echo "$0 -l /etc/ -e "
}

LOC_SET=0 # 0- location net set, use current location
STATS=0 #0 do not display statistics

while [ $# -gt 0 ]
do
    case $1 in
    -l|--location )
        LOCATION="$2"
        if ! [ -d "$LOCATION" ]; then
            usage
        fi
        LOCT_SET=1
        shift
        shift
        ;;
    -e|--extension )
        EXT="$2"
        shift
        shift
        ;;

    -s|--stats )
        STATS=1
        shift
        ;;

    -h|--help )
        shift
        usage
        ;;
    * )
        usage
        exit 1
        ;;
    esac

done

if [ $LOC_SET -ne 1 ]; then
    LOCATION=$(pwd);
fi

echo "LOCATION: $LOCATION"
# if exit status of grep is 0 => found records, else if 1 it didn't find records but it's fine

# ls -l /etc | awk '/^-/' | grep '\.conf$' => $0 == 0
# ls -l /etc | awk '/^-/' | grep '\.confffff$' => $0 == 1

if [ "$EXT" != ""]; then
    ls -l $LOCATION | awk '/^-/' | grep "\.$EXT" &>/dev/null
    if [ $? -ne 0 ]; then
        echo "No file with ext $EXT found"
        exit 2
    fi
    # calculate the size

    # ls -l | awk '{sum+=$5} END{print "SUM: ", sum, "B"}'
    # we can use file instead => ls -l $LOCATION | awk '^-/' | grep "\.$EXT$" | awk -f size.awk
    ls -l $LOCATION | awk '^-/' | grep "\.$EXT$" | awk '{
        sum+=$5
        if (NR==1) {
            min=$5
            max=$5
            min_name=$9
            max_name=$9
        }
        if ($5 > max) {
            max=$5
            max_name=$9
        }
        if ($5 < min) {
            min=$5
            min_name=$9
        }
        }
        END{
            print "SUM: ", sum/1024/1024 " MB"
            print "FILES: ", NR
            if (stats==1) {
                print "Largest file :\t", max_name,  max/1024/1024, "MB"
                print "Smallest file :\t", min_name,  min/1024/1024, "MB"
            }
        }
    '
    else
        # v => except
        ls -l $LOCATION | awk '^-' | awk -v stats=$STATS -f size.awk

fi
