#!/bin/bash
install_help (){
    echo "Please select one of the following desktop environments (case-sensitive!):"
    echo "1.xfce4"
    echo "2.mate"
    exit 1
}

if [ -z "$1" ];then
    install_help
elif [[ $1 != "xfce4" && $1 != "mate" ]] ;then
    echo "\"$1\" is not supported."
    install_help
else
    echo "This script will take care of the installation process."
    echo "Note the script can be run again to update the tiling mode"
    echo "(as long as you ran git pull beforehand to pull all the changes)"
    echo "Copying config files"
    cp -r xmonad ~/.xmonad
    cp -r config/* ~/.config
    if [ $1 == "xfce4" ];then
        cp switch_xfce4.sh ~/
        chmod u=rwx ~/switch_xfce4.sh
    elif [ $1 == "mate" ];then
        cp switch_mate.sh ~/
        chmod u=rwx ~/switch_mate.sh
    fi
    echo "Tiler installed succesfully."
fi