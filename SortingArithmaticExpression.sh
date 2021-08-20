read -p "Enter number for a " a
read -p "Enter number for b " b
read -p "Enter number for c " c

declare -A resultDict

expr1=$(( $a + $(($b * $c )) ))
resultDict[expr1]=$expr1
echo $expr1
expr2=$(( $(( $a * $b )) + $c ))
resultDict[expr2]=$expr2
echo $expr2
expr3=$(( $c + $(( $a / $b )) ))
resultDict[expr3]=$expr3
echo $expr3
expr4=$(( $(( $a % $b )) + $c ))
resultDict[expr4]=$expr4
echo $expr4

count=0
for i in "${!resultDict[@]}"
do
    echo "key : $i"
    echo "value : ${resultDict[$i]}"
    resultArr[((count++))]=${resultDict[$i]}
done

echo "Values in array format : "${resultArr[@]}

for (( i=0; i<${#resultArr[@]}; i++ ))
do
    for (( j=$(($i+1)); j<${#resultArr[@]}; j++ ))
    do
        if [ ${resultArr[$i]} -lt ${resultArr[$j]} ]
        then
            temp=${resultArr[$i]}
            resultArr[$i]=${resultArr[$j]}
            resultArr[$j]=$temp
        fi
    done
done

echo "Values in array format desc : "${resultArr[@]}
