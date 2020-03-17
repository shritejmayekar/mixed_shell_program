#! /bin/bash

age=25 
# Logical And Operators
if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then
	echo "valid age"
else
	echo "age not valid"
fi

if [ "$age" -gt 18 -a "$age" -lt 30 ]
then
        echo "valid age"
else
        echo "age not valid"
fi

if [[ "$age" -gt 18  && "$age" -lt 30 ]]
then
        echo "valid age"
else
        echo "age not valid"
fi

# Logical OR operator

if [ "$age" -gt 18 ]  || ["$age" -lt 30 ]
then
        echo "valid age"
else
        echo "age not valid"
fi


if [ "$age" -eq 18 -o "$age" -eq 30 ]
then
        echo "valid age"
else
        echo "age not valid"
fi


if [[ "$age" -eq 18  || "$age" -eq 30 ]]
then
        echo "valid age"
else
        echo "age not valid"
fi

