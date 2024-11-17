#Write a shell script to count the number of words of different length present in
#a given text.


#!/bin/bash

# Check if a file is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <file_name>"
  exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
  echo "Error: File '$1' not found."
  exit 1
fi

# Count words of different lengths
echo "Word length distribution:"
awk '{ 
  for (i = 1; i <= NF; i++) {
    length = length($i)
    count[length]++
  }
} 
END {
  for (len in count) {
    print len, count[len]
  }
}' "$1" | sort -n
