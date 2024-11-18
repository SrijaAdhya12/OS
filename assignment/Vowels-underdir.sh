#a shell script to list the number of files under the current directory whose names start with a vowel

#!/bin/bash

echo "Counting files starting with a vowel in the current directory..."

# Find files in the current directory starting with vowels (case-insensitive)
count=$(find . -maxdepth 1 -type f -iregex './[aeiouAEIOU].*' | wc -l)

echo "Number of files starting with a vowel: $count"
