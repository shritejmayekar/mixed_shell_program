#! /bin/bash

INPUT=data.csv
OLDIFS=$IFS
IFS=' '
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99;}
total_pay=0
echo "EmployeeName  BasePay" 
while read DATA
do
        vars=( $DATA )
        #echo "${vars[2]}  ${vars[4]}"
        if (( vars[3] > 10000 ))
        then
               echo "${vars[1]}  ${vars[3]}"
        fi
        #if [[ ${vars[2]} == "CAPTAIN" ]]
        #then
        #        total_pay=$((total_pay + vars[6]))
        #fi
done < $INPUT
IFS=$OLDIFS
#echo "Total pay of captains is $total_pay

