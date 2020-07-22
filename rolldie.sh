#!/bin/bash

declare -A dice_roll

one=1
two=2
three=3
four=4
five=5
six=6

key=1

echo "Rolling Dice........"

while [[ $one -le 10 && $two -le 10 && $three -le 10 && $four -le 10 && $five -le 10 && $six -le 10 ]]
do
        dice=$(( RANDOM % 6 + 1 ))
        echo $dice
        dice_roll[i]=$dice

        if [ ${dice} -eq 1 ]
        then
                ((one++))
                echo "reached 1"
        elif [ ${dice} -eq 2 ]
        then
                ((two++))
                echo "reached 2"
        elif [ ${dice} -eq 3 ]
        then
                ((three++))
                echo "reached 3"
        elif [ ${dice} -eq 4 ]
        then
                ((four++))
                echo "reached 4"
        elif [ ${dice} -eq 5 ]
        then
                ((five++))
                echo "reached 5"
        elif [ ${dice} -eq 6 ]
        then
                ((six++))
                echo "reached 6"
        else
                exit
        fi
((key++))
done

echo "total dice_roll : $key "
echo "dice 1 : $one "
echo "dice 2 : $two "
echo "dice 3 : $three "
echo "dice 4 : $four "
echo "dice 5 : $five "
echo "dice 6 : $six"

if [[ $one -lt $two && $one -lt $three && $one -lt $four && $one -lt $five && $one -lt $six ]]
then
        echo "Minimum Time reached dice 1 is : $one"

elif [[ $two -lt $one && $two -lt $three && $two -lt $four && $two -lt $five && $two -lt $six ]]
then
        echo "Minimum Time reached dice 2 is : $two"

elif [[ $three -lt $one && $three -lt $two && $three -lt $four && $three -lt $five && $three -lt $six ]]
then
        echo "Minimum Time reached dice 3 is : $three"

elif [[ $four -lt $one && $four -lt $two && $four -lt $three && $four -lt $five && $four -lt $six ]]
then
        echo "Minimum Time reached dice 4 is : $four"

elif [[ $five -lt $one && $five -lt $two && $five -lt $three && $five -lt $four && $five -lt $six ]]
then
        echo "Minimum Time reached dice 5 is : $five"

elif [[ $six -lt $one && $six -lt $two && $six -lt $three && $six -lt $four && $six -lt $five ]]
then
        echo "Minimum Time reached dice 6 is : $six"
fi


echo "Maximum Time reached dice is : " ${dice_roll[@]}

