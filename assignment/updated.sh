#Display files created/updated within the last 14 days

#!/bin/bash

echo "Files created or updated within the last 14 days:"
find . -type f -mtime -14
