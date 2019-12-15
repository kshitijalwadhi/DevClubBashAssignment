#!/bin/bash


if [ $# -ne 2 ]
then
    echo "Arguements not properly given"
    exit -1
elif [ ! -f $1 ]
then
    echo "Invalid file"
    exit -1
elif [ ! -r $1 ]
then
    echo "Cant read the directory"
    exit -1
fi

cat $1 | grep $2 | cut -d':' -f5
