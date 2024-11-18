#!/bin/bash

name=$1
age=$2
compliment=$3
user=$(whoami)
directory=$(pwd)
date=$(date)

echo "Butler: Hello $name!"
if [[ $name == "john" || $compliment == "rich" ]]; then
	echo "$age years old"
	echo ""
	sleep 1
	echo "How $compliment we feeling today?!"
	echo "Watch out! Make way for $compliment McGee!"
	echo ""
	sleep 1
	echo "You're logged in as $user," 
	echo "Directory: $directory" 
	echo "Date: $date"
	echo ""
	sleep 1
	echo "$directory"
	echo ""
	echo "What to do?"
	echo "Call Mom (1) | Play Elden Ring (2) | Edit asem.s file (3) | Compile, assemble, run asem (4)"
	echo "Run Workstation (5) | Edit Workstation (6) | run deskinstall.sh (7)"
	echo "Upload Workstation to USB 'Lexar' (8) | Git clone workstation locally (9) | Exit Workstation (x)"
	read opt
	if [[ $opt == "1" ]]; then	
		echo "Call Mom..." 
		sleep 1
		./mom.sh $name $age $compliment

	elif [[ $opt == "2" ]]; then
		echo "Load Elden Ring..."
		sleep 1
		./eldenring.sh $name $age $compliment

	elif [[ $opt == "3" ]]; then
		vim asem.s

	elif [[ $opt == "4" ]]; then
		sleep 1
		as asem.s -o asem.o
		gcc -o asem asem.o -nostdlib -static
		sleep 1
		echo ""
		./asem
		echo ""
		read

	elif [[ $opt == "5" ]]; then
		echo "Open webstation"
		echo "Open GUI's"
		python3 scraper_gui.py & python3 app_gui.py & chromium -e index.html
		
	elif [[ $opt == "6" ]]; then
		echo "Edit Workstation..."
		sleep 1
		python3 app_gui.py & python3 scraper_gui.py & chromium -e "index.html" & konsole -e --qwindowgeometry 525x400+50+50 "nano desk/WORKSTATION.sh deskinstall.sh butler.sh getrichquick.sh mom.sh eldenring.sh intro.sh app_gui.py scraper_gui.py app.py scraper.py"
		./butler.sh $name $age $compliment

	elif [[ $opt == "7" ]]; then
		./deskinstall.sh
		echo "ran deskinstall.sh"
		read

	elif [[ $opt == "8" ]]; then
		echo "Upload Workstation to USB named Lexar..."
		sleep 1
		cd
		echo "arrived in home directory"
		sleep 1
		echo "copying workstation to usb"
		sudo cp -r workstation /run/media/$USER/Lexar
		echo "copied workstation directory to /run/media/$USER/Lexar"
		cd workstation

	elif [[ $opt == "9" ]]; then
		cd
		cd Desktop/desk
		./gitcloning.sh $name $age $compliment

	else
		echo "Close Butler..."
		sleep 1
		exit
	fi

else
	echo "You can't afford much here yet, "Get Rich" first? (y/n)"
	read opt
	
	if [[ $opt == "y" ]]; then
		sleep 1
		echo "Right this way..."
		sleep 1
		./getrichquick.sh $name $age
	else
		echo "guess we can hang"
		read
		echo "Wanna get rich now? (y/n)"
		read opt
		
		if [[ $opt == "y" ]]; then
			echo "Right this way..."
			sleep 2
			./getrichquick.sh $name $age
		else
			sleep 1
			./butler.sh $name $age
		fi
	fi
fi

./butler.sh $name $age $compliment
