#!/bin/bash

#Variables
Directory=/home/ec2-user/logs

#Color 
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $Directory ]
then
    echo "$Directory is$G exits$N"
else 
    echo "$Directory$R doesn't exits$N"
fi

Files=$(find $Directory -name "*log" -mtime +14)
echo "$Files"

while IFS= read -r file
do
    echo "Deleting file $file"
    rm -rf $file
done <<< $Files