#! /bin/bash
num1=20.4
num2=6

echo "$num1+$num2" | bc
echo "$num1-$num2" | bc
echo "20.5*5" | bc
echo "scale=2;20.5/5" | bc
echo "20.5%5" | bc
num=4

echo "scale=2;sqrt($num)" | bc -l
echo "scal=2;3^3" | bc -l
