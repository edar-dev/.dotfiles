#!/bin/bash

function installYay() {
	if ! isPackageInstalled "yay"; then
		echo INSTALLING YAY
		git clone https://aur.archlinux.org/yay-git.git
		cd yay-git && makepkg -si --noconfirm && cd ..
		rm -rf yay-git
	else
		echo YAY ALREADY INSTALLED
	fi
}
