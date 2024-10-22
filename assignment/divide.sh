#Write a shell script which displays the result of division of one integer by another integer and informs if the user tries to divide an integer by 0.

divide(){
        if ["$2" -eq 0]; then
                echo "Division by zero not allowed"
        else
                result=$(($1/$2))
                echo "Resunt $1/$2 = $result"
        fi
}

echo "enter numerator"
read num

echo "enter denominator"
read deno

divide $num $deno