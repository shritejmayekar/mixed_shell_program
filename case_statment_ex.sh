#! /bin/bash
echo -e "Enter some character: \c"

read value

case $value in
	[a-z] )
		echo "entered $value a to z";;
	[A-Z])
		echo "entered $value A to Z";;
	[0-9])
		echo "entered $value 0 to 9";;
	?)
		echo "entered $value special character";;
	*)
		echo "unknown input"


esac
