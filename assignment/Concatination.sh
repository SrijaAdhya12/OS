#Concatenate two files and count characters, words, and lines

#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 file1 file2"
  exit 1
fi

output_file="result.txt"
cat "$1" "$2" > "$output_file"

echo "Concatenated file '$output_file' created."
echo "Number of lines: $(wc -l < "$output_file")"
echo "Number of words: $(wc -w < "$output_file")"
echo "Number of characters: $(wc -c < "$output_file")"
