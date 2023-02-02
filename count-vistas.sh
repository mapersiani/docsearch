#!/bin/bash

echo "Enter the directory path: "
read directory

count=0

for file in $(find $directory -type f); do
  if grep -q "vista" $file; then
    ((count++))
  fi
done

echo "Number of files containing the word 'vista': $count"
