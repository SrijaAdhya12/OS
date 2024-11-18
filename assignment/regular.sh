#Check if a file is regular and find the total number of words, characters, and lines

#!/bin/bash

if [ -f "$1" ]; then
  echo "The file '$1' is a regular file."
  echo "Number of lines: $(wc -l < "$1")"
  echo "Number of words: $(wc -w < "$1")"
  echo "Number of characters: $(wc -c < "$1")"
else
  echo "The file '$1' is not a regular file or does not exist."
fi
