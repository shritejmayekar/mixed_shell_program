#!/bin/bash

echo -e "Please enter the file name:\c"
read file_name
if [ -f $file_name ] #chech if the name of the file is exists
then
        if [[ ${file_name##*.} == "txt" ]]
	then
		 var1="/home/admin106/Desktop/"
		 var2="${file_name%.*}"
		 direct=$var1$var2
		 mkdir $direct
		 mv $file_name $direct
		 echo $var1 $var2
	fi
else
        echo "$file_name not found"
fi
#for entry in "$search_dir"/* "$PWD"/*
#do
entry=file_name
if [ -f $entry ]
then
	echo $entry
          #if [[  ${entry##*.} == "txt" ]]
          #then
           #       file_path=${entry%.*}
           #       extention=${entry##*.}
           #       var2="$(basename $file_path)"
           #       var1="/home/admin106/Desktop/"
           #       direct="$var1$var2"
           #       echo $direct
           #       mkdir $direct
           #       mv $entry $direct
           #       echo "$entry"
         # fi
  fi
#done


