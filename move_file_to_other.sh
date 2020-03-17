#! /bin/bash

for entry in "$search_dir"/* "$PWD"/*
do
  if [ -f "$entry" ]
  then
	  if [[  ${entry##*.} == "txt" ]]
	  then
		  file_path=${entry%.*}
		  extention=${entry##*.}
		  var2="$(basename $file_path)"
		  var1="/home/admin106/Desktop/"
                  direct="$var1$var2"
		  echo $direct
		  mkdir $direct
		  mv $entry $direct
		  echo "$entry"
	  fi
  fi 
done

