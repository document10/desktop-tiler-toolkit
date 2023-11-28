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
    if [ $1 == "xfce4" ];then
        echo "xfwm4"
    elif [ $1 == "mate" ];then
        echo "marco"
    fi
fi
