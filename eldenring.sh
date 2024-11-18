#!/bin/bash
name=$1
age=$2
compliment=$3

#First Beast

beast=$(( $RANDOM % 2 ))
echo "Lord $name a beast approaches, we must Prepare to battle. Pick a number between 0 and 1. (0/1)"
read tarnished

if [[ $beast == $tarnished ]]; then
	echo "The beast vanquished! Congrats fellow tarnished"
else
	echo "You Died"
	./eldenring.sh $name $age
fi

#Second Beast Boss Margrit
margrit=$(( $RANDOM % 10 ))
sleep 3
echo "Boss Margrit approaches, prepare for war! Choose a number between 0 and 9. (0-9)" 
read tarnished

if [[ $margrit == $tarnished || $tarnished == "coffee" ]]; then
echo "Margrit was vanquished! Victory is ours!"
sleep 1
echo "Choose an option: Get the butler(1), Call Mom(2), Play again(3)"
read opt
  if [[ $opt == "1" ]]; then
	./butler.sh $name $age $compliment
  elif [[ $opt == "2" ]]; then
	./mom.sh $name $age $compliment
  else
	./eldenring.sh $name $age $compliment	
  fi

else
	echo "You Died"
	./eldenring.sh $name $age
fi
