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



k=0
while [[ $k -le 4 ]]
do
for ((i=0;i<4;i++))
do
	if [[ ${resultArr[$i]} -lt ${resultArr[$((i+1))]} ]]
	then
	temp=${resultArr[$i]}
	resultArr[$i]=${resultArr[$((i+1))]}
	resultArr[$((i+1))]=$temp
	fi
done
((k++))
done

echo "array in descending"
echo "${resultArr[@]}"
