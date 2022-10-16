#! /bin/bash -x

declare -A resultDict
declare -a resultArr
echo "enter three numbers"
read a
read b
read c
resultDict['result1']=$((a + b * c))
resultDict['result2']=$((a * b + c))
resultDict['result3']=$((c + a / b))
resultDict['result4']=$((a % b + c))
echo "${resultDict[@]}"

j=0
for i in ${!resultDict[@]}
do
	resultArr[$j]=${resultDict[$i]}
	((j++))
done
echo "${resultArr[@]}"
