#!/bin/bash

#variables
Person1=Ganesh
Person2=Bhanuuu

echo "$Person1: Hi $Person2. How are you?"
echo "$Person2: Hello $Person1. I'm fine, How are you doing"
echo "$Person1: Doing good $Person2"
echo "$Person2: How is your DevOps preparation"
echo "$Person1: It's going good $Person2"
echo "$Person2: Super $Person1" 
echo "$Person1: yeah"

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