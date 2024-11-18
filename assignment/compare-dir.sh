#Compare a directory name with the current directory

#!/bin/bash

read -p "Enter a directory name: " dir

if [ -d "$dir" ]; then
  current_count=$(find . -type f | wc -l)
  dir_count=$(find "$dir" -type f | wc -l)

  if [ "$current_count" -gt "$dir_count" ]; then
    echo "The current directory has more files ($current_count) than $dir ($dir_count)."
  elif [ "$current_count" -lt "$dir_count" ]; then
    echo "The directory $dir has more files ($dir_count) than the current directory ($current_count)."
  else
    echo "Both directories have the same number of files ($current_count)."
  fi
else
  echo "The directory '$dir' does not exist."
fi
