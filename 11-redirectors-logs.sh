#!/bin/bash

Log_folder=/var/log/shellscript-practice
Script_name=$(echo $0 | cut -d "." -f1)
Log_file=$Log_folder/$Script_name/$(date "+%A,%B %d %Y %T").log

mkdir -p $Log_folder

 #Color 
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#Functions
ROOT_ACCESS(){
    USERID=$(id -u)

    if [ $USERID -ne 0 ]
    then 
        echo "Get the root access"
        exit 1  
    fi
}

VALIDATE(){    
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 is$R NOT$N installed, going to install" &>>$Log_file
        dnf install $2 -y
        if [ $? -ne 0 ]
        then
            echo -e "$2 is $R not$N installed, check the error" &>>$Log_file
            exit 1
        else
            echo -e "$2 installation is$G Successful$N" &>>$Log_file
        fi
    else
        echo -e "$2 is$Y Already$N installed, nothing to do" &>>$Log_file
    fi
}

INPUT(){
    if [ $# -eq 0 ]
    then
        echo "Please give any packages names to intall it"
        exit 1
    fi
}

ROOT_ACCESS
INPUT $@

#Using loops
for package in $@ # $@ refers to all arguments passed to it
do
    echo "Proceeding to install your requested Package $package"
    dnf list installed $package 
    VALIDATE $? $package
done