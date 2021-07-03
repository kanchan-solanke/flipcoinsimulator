#! /bin/bash -x
head=0
tail=0

while [ "$head" -lt 21 ] && [ "$tail" -lt 21 ]
do
x=$(( RANDOM%2 ))
if [ $x -eq 1 ];
then
tail=$(( $tail + 1 ))
else
head=$(( $head + 1 ))
fi
done

if [ "$head" -eq 21 ] && [ "$tail" -eq 21 ]
then
echo "It's a tie"
elif [ "$head" -eq 21 ]
then
echo "head won by" $(($head-$tail))
else
echo "tail won by" $(($tail-$head))
fi
