#! /bin/bash

INPUT=data.csv
OLDIFS=$IFS
IFS=' '
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99;}

while read DATA
do
	vars=( $DATA )
	echo "${vars[1]}  ${vars[6]}"
done < $INPUT
IFS=$OLDIFS
