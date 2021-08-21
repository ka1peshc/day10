#!/bin/bash 
declare -A singlet
singlet[Heads]=0
singlet[Tails]=0

declare -A doublet
doublet[HH]=0
doublet[HT]=0
doublet[TH]=0
doublet[TT]=0

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

    coin2=$( coinFlip )
    if [[ $coin1 -eq 0 && $coin2 -eq 0 ]]
    then
        doublet[HH]=$(( ${doublet[HH]} + 1 ))
    elif [[ $coin1 -eq 0 && $coin2 -eq 1 ]]
    then
        doublet[HT]=$(( ${doublet[HT]} + 1 ))
    elif [[ $coin1 -eq 1 && $coin2 -eq 0 ]]
    then
        doublet[HT]=$(( ${doublet[HT]} + 1 ))
    else
        doublet[TT]=$(( ${doublet[TT]} + 1 ))
    fi

    ((i++))
done
echo "Heads " $(($((${singlet[Heads]}*100))/12))"%"
echo "Tails " $(($((${singlet[Tails]}*100))/12))"%"
echo "two coin flip result"
HH=$(($((${doublet[HH]}*100))/12))
HT=$(($((${doublet[HT]}*100))/12))
TH=$(($((${doublet[TH]}*100))/12))
TT=$(($((${doublet[TT]}*100))/12))

echo "HH wining percent "$HH"%"
echo "HT wining percent "$HT"%"
echo "TH wining percent "$TH"%"
echo "TT wining percent "$TT"%"
