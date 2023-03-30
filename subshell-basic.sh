#!/bin/bash

if (( $# != 1 )); then
    echo "Usage: $0 <max iteration number>"
    exit -1
fi


maxIterations=$1

(
    for (( i=0; i<$maxIterations; i++ )); do
        echo "---------------------------"
        echo   "$i. This is 1st subshell"
        echo "---------------------------"
        sleep 1
    done   

)&

(
    for (( i=0; i<$maxIterations+2; i++ )); do
        echo "---------------------------"
        echo "$i. This is 2nd subshell"
        echo "---------------------------"
        sleep 1
    done


)&

sleep $(($maxIterations+4))