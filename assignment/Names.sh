#Write a shell script that takes a list of names and displays all information in the
#password file, where login names are the members of the list.


#!/bin/bash

# Check if at least one argument is provided
if [ $# -lt 1 ]; then
  echo "Usage: $0 <list_of_usernames>"
  exit 1
fi

# Iterate through the list of usernames
for username in "$@"; do
  # Search for the username in the /etc/passwd file
  user_info=$(grep "^$username:" /etc/passwd)
  
  if [ -z "$user_info" ]; then
    echo "User '$username' not found in the system."
  else
    echo "Information for user '$username':"
    echo "$user_info"
    echo "---------------------------------"
  fi
done
