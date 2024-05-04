#!/bin/bash

echo "please enter your user name"

read -s USERNAME  # this is the variable where the value of the one user entered

echo "entered user name is : $USERNAME"

echo "please enter your pwd"

read -s PASSWORD

echo "entered password is : $PASSWORD"


#this is only for validation, we should not print in the terminal
# $ sh 03-variables.sh
# please enter your user name
# entered user name is : SREEKANTH
# please enter your pwd
# entered password is : 12345678
