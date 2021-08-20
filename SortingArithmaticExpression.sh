read -p "Enter number for a " a
read -p "Enter number for b " b
read -p "Enter number for c " c

expr1=$(( $a + $(($b * $c )) ))
echo $expr1
expr2=$(( $(( $a * $b )) + $c ))
echo $expr2