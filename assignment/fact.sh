read -p "Enter Number" -r number
fact=1
for ((i=number; i>1; i-- )); do
        ((fact*=i))
done

echo "$number = $fact"