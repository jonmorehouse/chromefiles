Notes on parsing a git submodule file!
=

1.) Parse the file and grab the first few lines etc
	`cat file | awk '{ line1= $0; getline; line2=$0; getline; line3=$0; print line1 line2 line3 }'`

2.) You can also split a variable `split($line1, splitLine, "/")` inside of the awk command 

3.) Finally, you can iterate through the file and eval each line ... 

	`
	while read line
	do
		eval $line

	done < file.txt 
	`

