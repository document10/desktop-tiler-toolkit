#!/bin/bash
output=$(pidof marco)
if [ -n "$output" ]; then
  killall marco
  killall plank 
  xmonad --recompile
  xmonad --replace &
  sleep 5
  picom -f &
else
  killall ~/.xmonad/xmonad-x86_64-linux
  killall picom
  marco --replace &
  plank &
fi
