coin1=$((RANDOM%2))
if [ $coin1 -eq 0 ]
then
    echo "Heads"
else
    echo "Tails"
fi
