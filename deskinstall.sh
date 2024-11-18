#!/bin/bash

echo "copying desk folder to the desktop"
sudo cp -r desk /home/$USER/Desktop

echo "entering desk"
cd
cd Desktop/desk

echo "making gitcloning.sh executable"
sudo chmod +x /home/$USER/Desktop/desk/gitcloning.sh

echo "copying the WORKSTATION.sh start file to desktop"
sudo cp WORKSTATION.sh /home/$USER/Desktop

echo "making executable WORKSTATION.sh located in 'home/$USER/Desktop'"
sudo chmod +x /home/$USER/Desktop/WORKSTATION.sh

echo "building local venv"
cd
python3 -m venv venv
source venv/bin/activate
pip install -r workstation/requirements.txt
deactivate
echo "venv installation completed"
read

echo "entering workstation directory"
cd
cd workstation

echo "making executable all workstation directory files"
sudo chmod +x mom.sh butler.sh getrichquick.sh intro.sh eldenring.sh asem app_gui.py scraper_gui.py app.py scraper.py

echo ""
sleep 1
echo "if a file is moved, it maintains the owner's permissions, if it is copied new executable permissions must be re-established for now"
echo "That's all. Should work now"
exit
