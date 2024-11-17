#Write a shell script that periodically count the number of users logged into the
#system. Send the number of minutes at which to check as parameter.


#!/bin/bash

# Check if an argument is provided for the interval in minutes
if [ $# -ne 1 ]; then
  echo "Usage: $0 <interval_in_minutes>"
  exit 1
fi

# Get the interval (in minutes)
interval=$1

# Validate that the interval is a positive integer
if ! [[ $interval =~ ^[0-9]+$ ]] || [ $interval -le 0 ]; then
  echo "Error: Please provide a positive integer for the interval."
  exit 1
fi

# Periodically check the number of logged-in users
while true; do
  # Count the number of logged-in users
  user_count=$(who | wc -l)
  
  # Print the current date and time along with the number of users
  echo "$(date): Number of logged-in users: $user_count"
  
  # Wait for the specified interval (convert minutes to seconds)
  sleep $((interval * 60))
done
