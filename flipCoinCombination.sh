#!/bin/bash 
declare -A singlet
singlet[Heads]=0
singlet[Tails]=0
function coinFlip () {
    temp=$((RANDOM%2))
    echo $temp
}
i=0
while [ $i -lt 12 ]
do
    coin1=$( coinFlip )
    if [ $coin1 -eq 0 ]
    then
        singlet[Heads]=$(( ${singlet[Heads]} + 1 ))
    else
        singlet[Tails]=$(( ${singlet[Tails]} + 1 ))
    fi
    ((i++))
done
echo "Heads " $(($((${singlet[Heads]}*100))/12))"%"
echo "Tails " $(($((${singlet[Tails]}*100))/12))"%"