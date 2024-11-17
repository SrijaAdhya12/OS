#A file called list consists of several words. Write a shell script which will
#receive a list of filenames, the first of which would be list. The shell script
#should report all occurrences of each word in list in the rest of the files
#supplied as arguments.


#!/bin/bash

# Check if at least two arguments are provided
if [ $# -lt 2 ]; then
  echo "Usage: $0 list_file other_files..."
  exit 1
fi

# Extract the first argument as the list file
list_file=$1

# Verify that the list file exists
if [ ! -f "$list_file" ]; then
  echo "Error: File '$list_file' not found."
  exit 1
fi

# Shift arguments to exclude the list file
shift

# Verify that there are other files provided
if [ $# -eq 0 ]; then
  echo "Error: No other files specified."
  exit 1
fi

# Loop through each word in the list file
while read -r word; do
  echo "Occurrences of '$word':"
  # Search for the word in the remaining files
  grep -ow "$word" "$@" | wc -l
done < "$list_file"
