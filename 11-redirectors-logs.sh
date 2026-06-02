#!/bin/bash

Log_folder=/var/log/shellscript-practice
Script_name=$(echo $#) | awk -F "." '{print $1F}'
Log_file=$Log_folder/$Script_name-$(date "+%A, %B %d %Y %T").log

mkdir -p $Log_folder

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
        echo "Get the root access" &>>$Log_file
        exit 1
    else 
        echo "Proceeding to install your requested Package $1" &>>$Log_file
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


#Using loops
for package in $@ 
do 
    INPUT
    CLARITY $package
    dnf list installed $package &>>$Log_file
    VALIDATE $? $package
done