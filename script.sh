#!/bin/bash

echo "This script was developed by TUSUR's group 738-1 student Stazharov Vladislav"
echo "the script allows you to change the format of selected image and/or it's size."
working=true
while $working = true
do
	echo "Type one of the following to select mode: 1. change image format; 2. change image format and/or  size; 3. exit."
	read mode

	if [ "1" = $mode ]; then
		echo "Input file name (with format)."
		read file
		echo "Input name for new file (with format)."
		read newfile
		convert $file $newfile
		echo "Done."
	elif [ "2" = $mode ]; then
		echo "Input file name (with format)."
                read file
                echo "Input name for new file (with format)."
                read newfile
		echo "Input size of new image in percents or in pixels x pixels (50%, 150%, 64x64 etc.)."
		read size
		convert $file -resize $size $newfile
		echo "Done."
	elif [ "3" = $mode ]; then
		working=false
	else
	echo "Please enter a valid number."
	fi
	echo "Do yo want to continue?(y/n)."
	read answer
	if [ "n" = $answer ]; then
	working=false
	fi
done
