#!/bin/dash

read mark

if [ "$mark" -eq "$mark" ] 2>/dev/null; then
    echo "$mark is an integer"
else
    echo "$mark is NOT an integer"
fi
