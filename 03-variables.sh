#!/bin/bash

#variables
#Type-1 Normal
echo "Ramesh: Hi Suresh. How are you?"
echo "Suresh: Hello Ramesh. I'm fine, How are you doing"
echo "Ramesh: Doing good Suresh"
echo "Suresh: How is your DevOps preparation"
echo "Ramesh: It's going good Suresh"
echo "Suresh: Super Ramesh" 
echo "Ramesh: yeah"

#Type-2 we can declare values without touching code
echo ""
Person1=Ganesh
Person2=Bhanuuu

echo "$Person1: Hi $Person2. How are you?"
echo "$Person2: Hello $Person1. I'm fine, How are you doing"
echo "$Person1: Doing good $Person2"
echo "$Person2: How is your DevOps preparation"
echo "$Person1: It's going good $Person2"
echo "$Person2: Super $Person1" 
echo "$Person1: yeah"

#Type-3 we can declare values without touching file
echo ""
echo "Arguments type"
Person1=$1
Person2=$2
echo "$Person1: Hi $Person2. How are you?"
echo "$Person2: Hello $Person1. I'm fine, How are you doing"
echo "$Person1: Doing good $Person2"
echo "$Person2: How is your DevOps preparation"
echo "$Person1: It's going good $Person2"
echo "$Person2: Super $Person1" 
echo "$Person1: yeah"

#Type-4 Secret 

echo "Enter your name: "
#read "Name"
echo "$Name"
echo "Enter your password: "
read -s Password
echo "$Password"