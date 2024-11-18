#Check if a file is blank; if not, display its contents

#!/bin/bash

if [ ! -f "$1" ]; then
  echo "The file '$1' does not exist."
elif [ ! -s "$1" ]; then
  echo "The file '$1' is a blank file."
else
  echo "The contents of the file '$1' are:"
  cat "$1"
fi
