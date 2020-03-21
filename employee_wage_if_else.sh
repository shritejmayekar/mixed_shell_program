#! /bin/bash

isPresent=$((RANDOM%2))
wagePerHr=20
wages=0
empHrs=8

if ((isPresent==1))
then
	wages=$((wagePerHr*empHrs))
else
	wages=0
fi
echo $wages
