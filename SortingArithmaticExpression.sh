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

echo "${!resultDict[@]}"
echo "${resultDict[@]}"