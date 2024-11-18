#!/bin/bash
compliment="rich"
name=$1
age=$2
getrich=$(( $RANDOM % 15 + $age))
echo "This app can make you rich in just 5 seconds. Ready to try?" 
echo "PRESS ENTER"
read
if [[ $name == "john" ]]; then
	echo "$name Booshay, you are $age years old now."
	sleep 2
	echo "Don't wait until you're $getrich to get rich!"
	echo "$PWD, $SHELL, $USER, $HOSTNAME"
	sleep 2
	echo ""
	echo ""
	echo "Abra kadabra $name" 
	sleep 2
	echo "You're getting richer."
	sleep 2
	echo "Call the butler?"
	read
		sleep 1
		echo "Oh Butler!"
		./butler.sh $name $age $compliment
else
	echo "$name: $age"
	sleep 1
	echo "Here we go..."
	sleep 1
	echo "5"
	sleep 1
	echo "4"
	sleep 1
	echo "3"
	sleep 1
	echo "2"
	sleep 1
	echo "1"
	sleep 1
	echo "$name, you are $age now"
	sleep 1
	echo "Without me, you wont be rich until your $getrich!"
	echo ""
	echo "$PWD, $SHELL, $USER, $HOSTNAME"
	sleep 2
	echo ""
	echo ""
	echo "Abra Kadabra $name"
	sleep 1
	echo "You're rich now."
	sleep 2
	echo "Calling the butler..."
	sleep 1
	./butler.sh $name $age $compliment
fi
