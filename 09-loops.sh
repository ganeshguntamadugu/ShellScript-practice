#!/bin/bash

#This is very tough
echo "1"
echo "2"
echo "3"
echo "4"
echo "5"
echo "6"
echo "7"
echo "8"
echo "9"
echo "10"

echo ""

#Using Loops to print numbers
for i in 1 2 3 4 5 6 7 8 9
do 
    echo "$i"
done

echo ""

#This is another simple way to use Loops
for i in {1..100} #It means 1 to 100
do
    echo "$i"
done