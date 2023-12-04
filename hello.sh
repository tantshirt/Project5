#!/bin/bash

# Checks Name 
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <name>"
    exit 1
fi

name=$1

echo "Hello $name, I am a BASH script!"
