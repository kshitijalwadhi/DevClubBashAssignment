#!/bin/bash


if [ $# -lt 1 ]
then
    echo "No parameters entered"
    exit -1
elif [ ! -d $1 ]
then
    echo "Invalid Directory"
    exit -1
elif [ ! -r $1 ]
then
    echo "Cant read the directory"
    exit -1
fi


find $1 -maxdepth 1 -type f -name "*$2" | wc -l

