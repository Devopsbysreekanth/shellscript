#!/bin/bash

#shell script run the command inside $() and stores the output into variable called DATE.
DATE=$(date)

echo "hello, this script executed at : $DATE"

PERSON1=$1 # this is the first value from command line
PERSON2=$2 # # this is the second value from command line

echo "$PERSON1: Hi $PERSON2, Good Morning"
echo "$PERSON2: Good Morning $PERSON1"
echo "$PERSON1: How are you $PERSON2"
echo "$PERSON2: i am good, how are you $PERSON1"

# the above one you have to execute like below
# $ sh variable.sh sreekanth rohit

# sum of two num

NUMBER1=$1
NUMBER2=$2

# I need to run a command inside shell to add these 2 numbers
sum((NUMBER1+NUMBER2))

echo "sum of the above two numbers: $SUM"