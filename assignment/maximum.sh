# Write a shell script to find the maximum of three numbers input through the keyboard.

read -r a b c
if [[ $a -gt $b ]]; then
        if [[ $a -gt $c ]]; then
                echo "$a"
        else
            echo "$c"

        fi
elif [[ $b -gt $c ]]; then
        echo "$b"
else
        echo "$c"
fi

#or 
num1=$1
num2=$2
num3=$3

if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]; then
        max=$num1
elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ]; then
        max=$num2
else
        max=$num3
fi
echo "The maximum number is: $max"
