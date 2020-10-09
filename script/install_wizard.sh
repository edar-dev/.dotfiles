#!/bin/bash

. ./helper/generalInstall.sh
. ./helper/installYay.sh
. ./helper/isPackageInstalled.sh
. ./helper/installSnap.sh

echo "Updating and Upgrading"
sudo pacman -Syyu

installYay
installSnap 

# install dialog if needed
generalInstall dialog

mainDialog
