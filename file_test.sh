#! /bin/bash
echo -e "Enter the name of the file:\c"
read file_name

if [ -e $file_name ]  #check if the name of file or directory exists
then
	echo "$file_name found"
else
	echo "$file_name not found"
fi
if [ -f $file_name ] #chech if the name of the file is exists
then
        echo "$file_name found"
else
        echo "$file_name not found"
fi

if [ -d $file_name ] # chech if the name of the directory is exists
then
        echo "$file_name found"
else
        echo "$file_name not found"
fi

# Apped text to file if file exists and having write permissions
if [ -f $file_name ] # chech if the file is empty
then
        if [ -w $file_name ]
	then
		echo "Type some text data. To quit press ctrl+d"
		cat >> $file_name
	else
		echo "The file do not have write permissions"
	fi
else
        echo "$file_name not exists"
fi

