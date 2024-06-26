#!/bin/bash

# our program goal is to install mysql through functions less code

# we will keep some code inside functions which is more often repeated, and call whenever you erquire

# functions will do some work on behalf of us and it will update what happend



# our program goal is to install mysql

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/SCRIPT_NAME-DATE.log


R="\e[31m"
G="\e[32m"
N="\e[0m"



# this function should validate the previous command and inform user it is success or failure

VALIDATE(){
    #$1 --> it will receive the argument1
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILURE $N"
    else
        echo -e "$2 ... $G FAILURE $N"
    fi
}




USERID=$(id -u)

if [ USERID -ne 0 ]
    then
        echo "ERROR:: Please run this script with root access"
        exit 1
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y &>>$LOGFILE


VALIDATE $? "Installing MySQL"

yum install posddtfix -y &>>$LOGFILE

VALIDATE $? "Installing postfix"
