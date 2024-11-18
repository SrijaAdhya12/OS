#List files by modification time (with lm) or access time (with la)

#!/bin/bash

if [ "$1" == "lm" ]; then
  echo "Files sorted by modification time:"
  ls -lt
elif [ "$1" == "la" ]; then
  echo "Files sorted by access time:"
  ls -ltu
else
  echo "Listing all files in the current directory:"
  ls
fi
