headsCount=0
tailsCount=0
count=0
while [[ $headsCount -lt 21 && $tailsCount -lt 21 ]]
do
    result=$((RANDOM%2))
    case $result in
        0)
            ((headsCount++));;
        1)
            ((tailsCount++));;
    esac
    ((count++))
done
echo "heads count is "$headsCount "  Tails count is "$tailsCount