# Write a shell script to find out whether any year input through the keyboard is a leap year or not. If no argument is supplied the current year should be assumed

year=${1:-"$(date +%Y)"}

((!(year % 4))) && ( ((!(year % 400))) || ((year % 100))) && echo Leap Year || echo Not a Leap Year