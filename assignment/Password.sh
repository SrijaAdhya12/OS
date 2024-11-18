#Password-based menu-driven program

#!/bin/bash

PASSWORD="password123"
TRIES=0
MAX_TRIES=3

while [ $TRIES -lt $MAX_TRIES ]; do
  echo -n "Enter password: "
  read -s input_password
  echo
  if [ "$input_password" == "$PASSWORD" ]; then
    clear
    while true; do
      echo -e "\033[1m-----------------------------\033[0m"
      echo -e "\033[1m       MENU OPTIONS         \033[0m"
      echo -e "\033[1m-----------------------------\033[0m"
      echo -e "\033[1m1. Number of users currently logged in\033[0m"
      echo -e "\033[1m2. Calendar of current month\033[0m"
      echo -e "\033[1m3. Current date (dd/mm/yyyy)\033[0m"
      echo -e "\033[1m4. Quit\033[0m"
      echo -e "\033[1m-----------------------------\033[0m"
      read -p "Enter your choice: " choice

      case $choice in
        1) 
          echo -e "\033[1mNumber of users logged in: $(who | wc -l)\033[0m"
          ;;
        2) 
          echo -e "\033[1m$(cal)\033[0m"
          ;;
        3) 
          echo -e "\033[1mDate: $(date +"%d/%m/%Y")\033[0m"
          ;;
        4) 
          echo -e "\033[1mGoodbye!\033[0m"
          exit 0
          ;;
        *) 
          echo -e "\033[1mInvalid choice. Try again.\033[0m"
          ;;
      esac
    done
  else
    echo "Incorrect password. Try again."
    ((TRIES++))
  fi
done

if [ $TRIES -ge $MAX_TRIES ]; then
  echo "Too many failed attempts. Exiting."
fi
