#!/bin/bash
echo "This script will take care of the installation process for xfce4."
echo "Note the script can be run again to update the tiling mode (as long as you ran git pull beforehand to pull all the changes)"
echo "(1/2) Copying necessary files"
cp switch.sh ~/
cp -r xfce4-tiling-mode-icons ~/
cp -r xmonad ~/.xmonad
cp -r config/* ~/.config
echo "(2/2) Applying panel configuration"
xfce4-panel-profiles load xfce4-tiling-mode-panel.tar.bz2
echo "Tiler installed succesfully."