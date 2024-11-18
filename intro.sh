#!/bin/bash

name=$name
age=$age
compliment=$compliment

#Setting up virtual environment
echo "try to turn on the virtual environment (ENTER)"
read
cd
cd workstation
source venv/bin/activate
echo "..."
echo "is the venv active?"
read

echo "Who are you?"
read name
#listen for $name from recorded user framework on external file that manages the value of "global" variables for users
if [[ $name == "john" ]]; then
	age="29"
	compliment="rich"
	sleep 1
	echo "Oh it's you $name!"
	echo "Butler!"
	sleep 1
	./butler.sh $name $age $compliment 
else
	echo "How old are you?"
	read age
	sleep 1
	echo "$name: $age"
	sleep 1
	echo "Enjoy your visit!"
	sleep 1
	./butler.sh $name $age
fi

