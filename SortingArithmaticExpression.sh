read -p "Enter number for a " a
read -p "Enter number for b " b
read -p "Enter number for c " c

expr1=$(( $a + $(($b * $c )) ))
echo $expr1
expr2=$(( $(( $a * $b )) + $c ))
echo $expr2
expr3=$(( $c + $(( $a / $b )) ))
echo $expr3
expr4=$(( $(( $a % $b )) + $c ))
echo $expr4
