#!/bin/bash
# Author: Fadi Quader
# Description: Calculate time elapsed

START=$(date +%s)
sleep 2
END=$(date +%s)
DIFF=$(( END - START ))

echo Time elapsed: $DIFF
