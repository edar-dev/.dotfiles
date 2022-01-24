#!/bin/bash

#pacman -S --needed - < /etc/pkglist.txt

pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort /etc/pkglist.txt))
