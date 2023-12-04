#!/bin/bash

# Check the number of arguments and the format of the arguments
if [[ "$#" -lt 3 || "$#" -gt 5 || "$#" -eq 4 ]]; then
    echo "usage: ./codeFileMaker.sh <-c|-cpp> <name> <description> -o <output file>" >&2
    exit 1
fi

# Additional checks for argument format, e.g., the first argument should be either -c or -cpp
if [[ "$1" != "-c" && "$1" != "-cpp" ]]; then
    echo "usage: ./codeFileMaker.sh <-c|-cpp> <name> <description> -o <output file>" >&2
    exit 1
fi

# If there are 5 arguments, the 4th argument should be -o
if [[ "$#" -eq 5 && "$4" != "-o" ]]; then
    echo "usage: ./codeFileMaker.sh <-c|-cpp> <name> <description> -o <output file>" >&2
    exit 1
fi


# set arg to var
lang=$1
name=$2
description=$3

#  makeHeader.sh script
header=$(./makeHeader.sh "$name" "$description")

#  codeTemplateMaker.sh script
template=$(./codeTemplateMaker.sh "$lang")

# Combine the header and template
output="$header
$template"

#  -o option is used
if [ "$#" -eq 5 ] && [ "$4" == "-o" ]; then
    # Redirect the output to the specified file
    echo -e "$output" > "$5"
    echo "Created file $5"
else
    # output to the console
    echo -e "$output"
fi
