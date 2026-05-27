#!/bin/bash

#Installing git
USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Get the root access"
    exit 1
else 
    echo "Proceeding to install your requested Package"

#Check if git installed already or not
dnf list installed git

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install"
    dnf install git -y
    if [ $? -ne 0]
    then
        echo "Git is not install, Please check the error"
        exit 1
    else 
        echo "Git is installed successfully"
    fi
else
    echo "Git is already installed, nothing to do"
fi