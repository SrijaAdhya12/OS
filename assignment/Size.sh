#Function size() to calculate the total size of files:

#!/bin/bash

size() {
  total_size=0
  for file in "$@"; do
    if [ -f "$file" ]; then
      file_size=$(stat -c%s "$file")
      total_size=$((total_size + file_size))
    else
      echo "Skipping '$file': Not a regular file."
    fi
  done
  echo "Total size of files: $total_size bytes"
}

# Example usage:
size "$@"
