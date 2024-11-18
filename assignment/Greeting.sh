#Display a greeting message based on the time of login

#!/bin/bash

hour=$(date +"%H")

if [ "$hour" -lt 12 ]; then
  echo "GOOD MORNING"
elif [ "$hour" -lt 18 ]; then
  echo "GOOD AFTERNOON"
else
  echo "GOOD EVENING"
fi
