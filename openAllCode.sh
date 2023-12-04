#!/bin/bash

# loop for all files with specified extensions
for file in *.{h,hpp,c,cpp,cc}; do
    # Check  file exists before  concatenate it
    if [[ -e $file ]]; then
        cat "$file"  #  print the file to the terminal
    fi
done
