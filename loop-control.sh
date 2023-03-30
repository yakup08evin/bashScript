#!/bin/bash

outer=1

for (( i=0; i<=5; i++ ))
do
    echo "pass $i outer loop"
    echo "------------------------"
    for (( j=0; j<10; j++ ))
    do
        if (( j==3 )); then 
            continue 
        elif (( j==7 )); then
            break 2
        fi
        echo "pass $j inner loop"
    done

    echo "++++++++++++++++++++++++"
    echo

done

exit 0