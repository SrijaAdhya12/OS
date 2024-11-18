#Delete files in btech2 that exist in mca1

#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 <directory1> <directory2>"
  exit 1
fi

dir1="$1"
dir2="$2"

if [ ! -d "$dir1" ] || [ ! -d "$dir2" ]; then
  echo "Both arguments must be directories."
  exit 1
fi

for file in "$dir1"/*; do
  base_file=$(basename "$file")
  if [ -f "$dir2/$base_file" ]; then
    echo "Deleting $dir2/$base_file"
    rm "$dir2/$base_file"
  fi
done
