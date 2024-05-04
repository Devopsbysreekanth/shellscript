#!/bin/bash

USERID=$(id -u)

if [ USERID -ne 0 ]
    then
        echo "Error: Please run this script with root access"
        exit 1
fi

# why we are checking shell script by default it will not stop if it faces error, it is our responsibility to check for the errors
# it is our responsibility again to check installation is success or not
# $? --> 0 then previous command is success
# $? --> 1-127 previous command is failure
yum install mysql -y

# $? --> it will store the previous command status

if [ $? -ne 0]
    then 
        echo "installation of mysql is error"
        exit 1
    else
        echo "installation of mysql is success"
fi

yum install postfix -y

if [ $? -ne 0 ]
    then 
        echo "installation of postfix is fail"
        exit 1
    else
        echo "installation of postfix is success"
fi