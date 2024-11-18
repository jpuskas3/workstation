#!/bin/bash

name=$1
age=$2
compliment=$3

echo "this is the git cloning page"
echo "Workstation will be erased and reinstalled from git"
echo "Are you sure? (y/n)"
read opt
if [[ $opt == y ]]; then
    cd
    sudo rm -r workstation
    git clone https://github.com/jpuskas3/workstation.git
    cd workstation
    sudo chmod +x deskinstall.sh
    ./deskinstall.sh $name $age $compliment
    ./butler.sh $name $age $compliment

else
    ./butler.sh $name $age $compliment
fi
