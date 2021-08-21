#!/bin/bash 
declare -A singlet
singlet[Heads]=0
singlet[Tails]=0

declare -A doublet
doublet[HH]=0
doublet[HT]=0
doublet[TH]=0
doublet[TT]=0

  
declare -A triplet
triplet[HHH]=0
triplet[HHT]=0
triplet[HTH]=0
triplet[THH]=0
triplet[HTT]=0
triplet[THT]=0
triplet[TTH]=0
triplet[TTT]=0

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

    coin3=$( coinFlip )
    if [[ $coin1 -eq 0 && $coin2 -eq 0 && $coin3 -eq 0 ]]
    then
        triplet[HHH]=$(($(( ${triplet[HHH]}))+1))
    elif [[ $coin1 -eq 0 && $coin2 -eq 0 && $coin3 -eq 1 ]]
    then
        triplet[HHT]=$(($(( ${triplet[HHT]}))+1))
    elif [[ $coin1 -eq 0 && $coin2 -eq 1 && $coin3 -eq 0 ]]
    then
        triplet[HTH]=$(($(( ${triplet[HTH]}))+1))
    elif [[ $coin1 -eq 0 && $coin2 -eq 1 && $coin3 -eq 1 ]]
    then
        triplet[HTT]=$(($(( ${triplet[HTT]}))+1))
    elif [[ $coin1 -eq 1 && $coin2 -eq 0 && $coin3 -eq 0 ]]
    then
        triplet[THH]=$(($(( ${triplet[THH]}))+1))
    elif [[ $coin1 -eq 1 && $coin2 -eq 0 && $coin3 -eq 1 ]]
    then
        triplet[THT]=$(($(( ${triplet[THT]}))+1))
    elif [[ $coin1 -eq 1 && $coin2 -eq 1 && $coin3 -eq 0 ]]
    then
        triplet[TTH]=$(($(( ${triplet[TTH]}))+1))
    else    
        triplet[TTT]=$(($(( ${triplet[TTT]}))+1))
    fi
    ((i++))
done
echo "One coin flip result"
echo "Heads " $(($((${singlet[Heads]}*100))/12))"%"
echo "Tails " $(($((${singlet[Tails]}*100))/12))"%"
echo "Two coin flip result"
HH=$(($((${doublet[HH]}*100))/12))
HT=$(($((${doublet[HT]}*100))/12))
TH=$(($((${doublet[TH]}*100))/12))
TT=$(($((${doublet[TT]}*100))/12))

echo "HH wining percent "$HH"%"
echo "HT wining percent "$HT"%"
echo "TH wining percent "$TH"%"
echo "TT wining percent "$TT"%"

echo "Three coin flip result"
HHH=$(($((${triplet[HHH]}*100))/12))
HHT=$(($((${triplet[HHT]}*100))/12))
HTH=$(($((${triplet[HTH]}*100))/12))
HTT=$(($((${triplet[HTT]}*100))/12))
THH=$(($((${triplet[THH]}*100))/12))
THT=$(($((${triplet[THT]}*100))/12))
TTH=$(($((${triplet[TTH]}*100))/12))
TTT=$(($((${triplet[TTT]}*100))/12))

echo "HHH wining percent "$HHH"%"
echo "HHT wining percent "$HHT"%"
echo "HTH wining percent "$HTH"%"
echo "HTT wining percent "$HTT"%"
echo "THH wining percent "$THH"%"
echo "THT wining percent "$THT"%"
echo "TTH wining percent "$TTH"%"
echo "TTT wining percent "$TTT"%"