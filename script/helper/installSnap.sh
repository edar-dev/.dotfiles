#!/bin/bash

function installSnap(){
	if ! isPackageInstalled snap
	then
		echo INSTALLING SNAP
	    	yay -Sy --noconfirm snapd
		sudo systemctl enable --now snapd.socket
    		echo Either log out and back in again, or restart your system, to ensure snap’s paths are updated correctly.
	        echo Once done, restart the script!
		exit 1
	else
		echo SNAP ALREADY INSTALLED
	fi
}
