result=$((RANDOM%2))
case $result in
    0)
        echo "Head";;
    1)
        echo "Tails";;
esac
