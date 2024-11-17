num=$1

if [ $num -lt 2 ]; then
  echo "$num is not a prime number."
  exit 0
fi

is_prime=1

for (( i=2; i*i<=num; i++ )); do
  if (( num % i == 0 )); then
    is_prime=0
    break
  fi
done

if [ $is_prime -eq 1 ]; then
  echo "$num is a prime number"
else
  echo "$num is not a prime number"
fi

# prime number from range 1 to 100

is_prime() {
  local num=$1
  if [ $num -lt 2 ]; then
    return 1 # Not a prime number
  fi
  for (( i=2; i*i<=num; i++ )); do
    if (( num % i == 0 )); then
      return 1 # Not a prime number
    fi
  done
  return 0 # Prime number
}

# Print all prime numbers in the range 1 to 100
echo "Prime numbers between 1 and 100:"
for (( num=1; num<=100; num++ )); do
  if is_prime $num; then
    echo "$num"
  fi
done
