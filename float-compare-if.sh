#!/bin/bash

export num1=2
export num2=1.5

st=$((`echo "$num1 < $num2"| bc`))
if [ $st -eq 1 ]
  then
    echo -e "$num1 < $num2"
  else
    echo -e "$num1 >= $num2"
fi
