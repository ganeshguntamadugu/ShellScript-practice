#!/bin/bash

#Functions

USERID=$(id -u)

if [ $USERID -ne 0]
then 
    echo "Get the root access"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is not installed, going to install"
        dnf install git -y
        if [ $? -ne 0 ]
        then
            echo "$2 is not install, Please check the error"
            exit 1
        else 
            echo "$2 is installed successfully"
        fi
    else
        echo "$2 is already installed, nothing to do"
    fi
}


dnf list installed git
VALIDATE $? Git

dnf list installed mysql
VALIDATE $? MySQL
