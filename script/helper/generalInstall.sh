#!/bin/bash
. ~/script/helper/isPackageInstalled.sh

#param $1 is the run command
#param $2 is the optional package name
generalInstall(){

	local command="$1";

	if [ -z "$2" ]; then
		local package="$2";
	else
		local package="$1";
	fi


	if isPackageInstalled "$command"
	then
		echo "$command is already installed. Enjoy!";
	else
		echo "Try to install $command";
		yay -S --noconfirm $package
	fi
}
