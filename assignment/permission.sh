#Display files with read, write, and execute permissions:

#!/bin/bash

echo "Files with read, write, and execute permissions:"
find . -type f -perm -u=rwx
