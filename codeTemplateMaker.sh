#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "usage: ./codeTemplateMaker.sh <-c|-cpp>" >&2
    exit 1
fi

# Check if the argument is -c or -cpp
if [[ "$1" != "-c" && "$1" != "-cpp" ]]; then
    echo "usage: ./codeTemplateMaker.sh <-c|-cpp>" >&2
    exit 1
fi

#  argument
option=$1

# C template if -c 
if [ "$option" == "-c" ]; then
    cat << EOF
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
    //TODO: Code goes here
    return 0;
}
EOF
#  C++ template if -cpp 
elif [ "$option" == "-cpp" ]; then
    cat << EOF
#include <iostream>
#include <stdlib.h>
using namespace std;

int main(int argc, char** argv)
{
    //TODO: Main code
    return 0;
}
EOF
else
    echo "usage: $0 <-c|-cpp>"
    exit 1
fi
