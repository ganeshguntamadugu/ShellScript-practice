#!/bin/bash

mkdir -p logs
#Variables
Directory=/home/ec2-user/logs

#Color 
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $Directory ]
then
    echo -e "$Directory is$G exits$N"
else 
    echo -e "$Directory$R doesn't exits$N"
    exit 1
fi

echo ""
Files=$(find $Directory -name "*.log" -mtime +14)
echo "$Files"

echo ""
while IFS= read -r line #IFS, internal field seperator, empty it will ignore while space, -r is for not to ignore special charecters like /
do
    echo "Deleting file $line"
    rm -rf $line
done <<< $Files 