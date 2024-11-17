#Write a shell script which would receive a log name during execution, obtain
#information about it from password file and display this information on the
#screen in easily understandable format.


#!/bin/bash

# Check if a username is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

# Extract the username from the first argument
username=$1

# Search for the username in the /etc/passwd file
user_info=$(grep "^$username:" /etc/passwd)

# Check if the username exists
if [ -z "$user_info" ]; then
  echo "Error: User '$username' not found in the system."
  exit 1
fi

# Parse the fields from the passwd file
IFS=':' read -r user pass uid gid full_name home_dir shell <<< "$user_info"

# Display the user information in an easily understandable format
echo "User Information:"
echo "-----------------"
echo "Username:      $user"
echo "UID:           $uid"
echo "GID:           $gid"
echo "Full Name:     ${full_name:-Not provided}"
echo "Home Directory: $home_dir"
echo "Shell:         $shell"
