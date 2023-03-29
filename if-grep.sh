#!/bin/bash

arg1=$1
arg2=$2

if grep -q $arg1 $arg2; then 
    echo "File contains at least one occurrence of Bash." 
fi