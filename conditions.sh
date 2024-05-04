#!/bin/bash

NUMBER1=$1

if [ $NUMBER1 -gt 100 ]
then
    echo "enterd $NUMBER1 greaterthan 100"
else
    echo "entered $NUMBER1 lessthan 100"
fi  

# $ sh conditions.sh 90
# entered 90 lessthan 100
