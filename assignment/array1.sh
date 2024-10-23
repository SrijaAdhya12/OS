# Write a shell script to create an array Total number of elements 20. Print the array. Search the 18th element and replace an array element with the element of 10th position.


array=()
for i in {1..20}; do
    array+=("Element $i")
done

echo "Original array:"
printf "%s\n" "${array[@]}"

element_to_replace="${array[17]}"
replacement_element="${array[9]}"

array[17]="$replacement_element"

echo -e "\nModified array (18th element replaced with 10th element):"
printf "%s\n" "${array[@]}"
