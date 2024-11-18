#Display files created/modified in the month of November

#!/bin/bash

echo "Files created or modified in November:"
find . -type f -newermt "2024-11-01" ! -newermt "2024-12-01" -ls
