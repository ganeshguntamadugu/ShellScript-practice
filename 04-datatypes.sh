#!/bin/bash

#arrays
#index starts from 0
Fruits=("apple" "banana" "orange")

echo ${Fruits[0]}
echo ${Fruits[@]}

#How to run a command inside shell script
Date=$(date +%F)
echo "Today's date is $Date"

#Adding two numbers
Number1=$1
Number2=$a
Sum=$(($Number1+$Number2))
echo "The total of $Number1 & $Number2 is $Sum"