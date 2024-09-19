#!/bin/bash

set -e

# move into the people dir
cd ../people/

# look for read me file 
target_file="README.md"

# loop through all dirs and find the target file
for dir in $(find . -type d ); do
  if [ -f "$dir/$target_file"]; then
    # echo "$dir/$target_file";
    name='head -n 1 "$dir/$target_file"';
    echo $name;
  fi
done
