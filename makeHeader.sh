#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <name> <description>"
    exit 1
fi

# Pulls  arguments
name=$1
description=$2

# Get the current date in mm/dd/yyyy format
current_date=$(date +'%m/%d/%Y')

# Displays the header comment utilzing cat
cat << EOF
/*
Author: $name
Date: $current_date
Description: $description
*/
EOF
