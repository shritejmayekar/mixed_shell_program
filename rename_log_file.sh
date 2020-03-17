#! /bin/bash

now="$(date)"
now="$(date +'%d%m%Y')"
for entry in "$search_dir"/* "$PWD"/*
do
  if [ -f "$entry" ]
  then
          if [[  ${entry#*.} == "log.1" ]]
          then
		  file_path=${entry%.*.*}
                  prev_file_name="$(basename $file_path)"
		  new_file_name=$prev_file_name$now.${entry#*.}
		  mv $entry $new_file_name
		  #echo $new_file_name
		  echo "Renaming $prev_file_name to $new_file_name"
                  #echo ${entry#*.}
		  #echo $now
		  #echo ${entry%.*}
         fi
  fi
done


