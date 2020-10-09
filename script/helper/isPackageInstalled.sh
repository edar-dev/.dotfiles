#!/bin/bash

#param $1 is the run command to check
isPackageInstalled(){
	local command="$1"
	if ! [ -x "$(command -v $command)" ]; then	
		return 1
	else
		return 0
	fi
}	
