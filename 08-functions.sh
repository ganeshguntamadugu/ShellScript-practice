#!/bin/bash

#Functions

CLARITY(){
    USERID=$(id -u)

    if [ $USERID -ne 0 ]
    then 
        echo "Get the root access"
        exit 1
    else 
        echo "Proceeding to install your requested Package $1"
    fi
}

VALIDATE(){    
    if [ $? -ne 0 ]
    then 
        echo "$2 is not installed, going to install"
        dnf install $3 -y
        if [ $? -ne 0 ]
        then
            echo "$2 is not install, check the error"
            exit 1
        else
            echo "$2 installation is Successful"
        fi
    else
        echo "$2 is already installed, nothing to do"
    fi
}

CLARITY Git
dnf list installed git
VALIDATE Git git

CLARITY MySQL
dnf list installed mysql
VALIDATE MySQL mysql

CLARITY Nginx
dnf list installed nginx
VALIDATE Nginx nginx