#!/bin/bash

#Functions

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Get the root access"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is not installed, going to install"
        dnf install $3 -y
        if [ $? -ne 0 ]
        then
            echo "$2 is not install, Please check the error"
            exit 1
        else 
            echo "$2 is installed successfully"
        fi
    else
        echo "$2 is already installed, nothing to do"
        # echo "$2 is aleady installed, I'm deleting it and reinstalling it"
        # dnf remove $3 -y
        # if [ $? -eq 0 ]
        # then
        #     echo "$2 is removed"
        # fi
        # dnf install $3 -y
        # if [ $? -ne 0 ]
        # then
        #     echo "$2 is not install, check the error"
        #     exit 1
        # else
        #     echo "$2 reinstalled Successfully"
        # fi
    fi
}


dnf list installed git
VALIDATE $? Git git

dnf list installed mysql
VALIDATE $? MySQL mysql

dnf list installed nginx
VALIDATE $? Nginx nginx