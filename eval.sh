#!/bin/bash

answer=0

while read line;
do
    num=$(echo "$line" | cut -d' ' -f1)
    op=$(echo "$line" | cut -d' ' -f2)


    case "$op" in 
        "+") let answer=answer+num
        ;;
        "-") let answer=answer-num
        ;;
        "*") let answer=answer*num
        ;;
        "/") let answer=answer/num
        ;;
    esac
done < $1


echo $answer
