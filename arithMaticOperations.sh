#! /bin/bash -x

echo "enter three numbers"
read a
read b
read c
result1=$((a + b * c))
result2=$((a * b + c))
echo "a+b*c= $result1"
echo "a*b+c= $result2"
