#! /bin/bash

isPresentFullTime=1
isPresentPartTime=2
wagePerHr=20

randomCheck=$((RANDOM%3))

if [[ $randomCheck -eq $isPresentFullTime ]]
then
	empHrs=8
elif [[ $randomCheck -eq $isPresentPartTime ]]
then
	empHrs=4
else
	empHrs=0
fi
salary=$((empHrs*wagePerHr))
echo "The salary is $salary"
