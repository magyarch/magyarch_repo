#!/bin/bash

# installing git if not installed for specific distro's

if ! location="$(type -p "git")" || [ -z "git" ]; then

	echo "#################################################"
	echo "installing git for this script to work"
	echo "#################################################"

  	sudo apt install git -y
	# check if apt-git is installed
	if which apt-get > /dev/null; then

		sudo apt-get install -y git

	fi

	# check if pacman is installed
	if which pacman > /dev/null; then

		sudo pacman -S --noconfirm git

	fi

	# check if eopkg is installed
	if which eopkg > /dev/null; then

		sudo eopkg -y install git

	fi

fi

#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config

git init
git config --global user.name "bazeeel"
git config --global user.email "deakfefe77@gmail.com"
sudo git config --system core.editor nano
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=25000'
git config --global push.default simple


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
