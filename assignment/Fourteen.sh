#shell script to display the files created or updated within the last 14 days from the current date

#!/bin/bash

echo "Files created or updated within the last 14 days:"

# Use the `find` command to locate files modified within 14 days
find . -type f -mtime -14 -exec ls -lh {} \;
