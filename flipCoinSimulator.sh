headsCount=0
tailsCount=0
count=0
while [ $count -lt 16 ]
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