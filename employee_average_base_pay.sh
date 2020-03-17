#! /bin/bash

INPUT=data.csv
OLDIFS=$IFS
IFS=' '
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99;}
base_pay=0
count=0
while read DATA
do
        vars=( $DATA )
        base_pay=$((base_pay + vars[3]))
	count=$((count+1))
done < $INPUT
IFS=$OLDIFS
echo $base_pay $count
average_base_pay=$((base_pay/(count-1)))
echo "average base pay is $average_base_pay"

