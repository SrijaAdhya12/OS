# Write a shell script to create an array. Total number of elements in the array is 30. Print the array. Then delete the 12th and 22nd element from the array. Again print the array.

array=()
for i in {1..30}; do
    array+=("Element $i")
done

echo "Original array:"
printf "%s\n" "${array[@]}"

unset array[11]  # 12th element
unset array[21]  # 22nd element

echo -e "\nModified array:"
printf "%s\n" "${array[@]}"
