#!/bin/bash

#printing a given number is greater than or less than or equal to

Number=$1
if [ $Number -gt 30 ]
then
    echo "Given number: $Number is Greater than 30"
if [ $Number -lt 30 ]
then 
    echo "Given number: $Number is Less than 30"
else
    echo "Given number: $Number is Equals to 30"
fi