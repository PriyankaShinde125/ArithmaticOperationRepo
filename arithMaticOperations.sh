#! /bin/bash -x

declare -A resultDict
echo "enter three numbers"
read a
read b
read c
resultDict['result1']=$((a + b * c))
resultDict['result2']=$((a * b + c))
resultDict['result3']=$((c + a / b))
resultDict['result4']=$((a % b + c))
echo "${resultDict[@]}"
