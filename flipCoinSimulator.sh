headsCount=0
tailsCount=0
count=0
function flipcoinFunction () {
    result=$((RANDOM%2))
    case $result in
        0)
            ((headsCount++));;
        1)
            ((tailsCount++));;
    esac
}
while [[ $headsCount -lt 21 && $tailsCount -lt 21 ]]
do
    flipcoinFunction
    ((count++))
done

if [ $headsCount -eq $tailsCount ]
then
    diff=$(($headsCount - $tailsCount))
    while [[ diff -gt -3 || diff -lt 2 ]]
    do
        flipcoinFunction
    done
fi

echo "heads count is "$headsCount "  Tails count is "$tailsCount