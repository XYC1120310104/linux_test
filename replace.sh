#!/bin/bash
x=1
echo "Please input W1,W2"
read W1
read W2
echo "W1:$W1,W2:$W2"
echo "counter of $W1:"
grep -c --color=auto $W1 ip.txt
echo "line of $W1:"
grep -n --color=auto $W1 ip.txt
echo "Do you want to replace $W1 with $W2?(1 is yes/0 is no)"
read n
if [ $n == $x ]
then
    sed -i "s/$W1/$W2/g" ip.txt 
fi
echo "bye"
