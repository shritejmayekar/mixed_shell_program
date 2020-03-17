#! /bin/bash

echo -e "Enter the folder/directory name \c"
read folder_name

if [[ -d $folder_name ]]
then
	echo "Folder $folder_name is exists"
else
	mkdir $folder_name
	echo "Folder $folder_name does not exists so created"
fi

