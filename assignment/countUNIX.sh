# Write a shell script to count the number of lines containing the word UNIX in the files given as command line arguments. If the word UNIX is not found in a file then copy the file as it is.

for file in $*; do
	grep -v "UNIX" $file > ff
	cp ff $file
done
