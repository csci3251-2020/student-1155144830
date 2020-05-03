#!/bin/bash
test
unzip -o  example.zip
cd example
sort number.txt

for i in 1 2 3 4 5 6 7 8 9 10
do
	char=$(sed -n ${i}p character.txt | tr -d -c 'a-z')
	touch $char.txt
	echo File ${char}.txt created.
done
ls
