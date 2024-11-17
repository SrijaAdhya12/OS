# Write a shell script to find out whether any year input through the keyboard is a leap year or not. If no argument is supplied the current year should be assumed

year=${1:-"$(date +%Y)"}

((!(year % 4))) && ( ((!(year % 400))) || ((year % 100))) && echo Leap Year || echo Not a Leap Year

#or

if [ -z "$1"]; then
        year=$(date +%Y)
else
        year=$1
fi
if (( $year % 4 == 0 && year % 100 != 0 )) || ( $year % 400 == 0 ); then
        echo "$year is a Leap Year"
else
        echo "$year is not a leap year"
fi
