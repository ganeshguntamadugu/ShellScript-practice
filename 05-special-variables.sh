#!/bin/bash

#Special variables
echo "All the variables passed to the script (To declare the vaiables): $@"
echo "Number of variables passed: $#"
echo "Script file name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "PID of current executing script: $$"
sleep 100 &
echo "PID of last background executing command: $!"
