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