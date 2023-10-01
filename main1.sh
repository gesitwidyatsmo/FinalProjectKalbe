#!/bin/bash

# Variables
path=./hdfs/data/data1
name_of_directory=data2

# Conditions
if [ -d "$(dirname "$path")/$name_of_directory" ]; then
    # If directory exists inside the path
    echo "There is $name_of_directory Directory Exists!"
else
    # If not
    echo "$name_of_directory Directory Not Exists!"
    
    # Create a directory inside the path
    mkdir -p "$(dirname "$path")/$name_of_directory"
fi