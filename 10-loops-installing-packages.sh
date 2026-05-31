#!/bin/bash

#Color 
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

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
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 is$R NOT$N installed, going to install"
        dnf install $2 -y
        if [ $? -ne 0 ]
        then
            echo "$2 is not installed, check the error"
            exit 1
        else
            echo -e "$2 installation is$G Successful$N"
        fi
    else
        echo -e "$2 is$Y Already$N installed, nothing to do"
    fi
}

for package in $@ 
do 
    CLARITY $package
    dnf list installed $package
    VALIDATE $? $package
done