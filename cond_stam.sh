#! /bin/bash
# Numbers if conditions
count=10
if [ $count -eq 10 ]
then
	echo "condition is true equals 10"
fi
if [ $count -gt 3 ]
then
	echo "condition is true $count is gt 3"
fi
if (($count >=9))
then
        echo "condition is true $count is gte 9"
fi
# Words conditions

word=abc

if [ $word == "abc" ]
then
	echo "condition is true"
fi



wordd=a

if [[ $wordd == "b" ]]
then
        echo "condition b is true"
elif [[ $wordd == "a" ]]
then
	echo "a is true"
else
	echo "cond is false"
fi



