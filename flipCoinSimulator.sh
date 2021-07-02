#! /bin/bash
Head=1
Tail=0
coin=$((RANDOM%2))
if [ $coin -eq 1 ]
then
echo "heads value"
else
echo "tails value"
fi
