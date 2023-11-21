# xfce4-tiling-mode
This repository is a collection of configs and scripts to add ondemand tiling functionality for your XFCE desktop.It uses Xmonad for tiling mode and xfwm4 for the regular mode.Simply press a button on the panel to activate it.
[How the desktop works]([https://imgur.com/63Y6ewZ](https://imgur.com/gallery/LZEiIZW)  
## Known issues
There are some issues with this desktop which I hope can be fixed.They are:
- After switching WMs you lose windows outside of the current desktop
- The switch can get janky at times,especially if you do it often without logging out.
- In tiling mode, the whiskermenu is treated like a regular window ,and leaving tiling mode results in the menu being glitched in a simmilar manner.
Because of these issues I don't advise using this as your daily driver ,untill all issues (known and unknown) get solved.  
## Installation
I intend on creating an easy-to-use installation script, that installs everything for you, and would work regardless of the distro.  
For now, to install the deskotp you need to:
- Import the `xfce4-tiling-mode-panel.tar.bz2` using the [XFCE Panel Proiles](https://docs.xfce.org/apps/xfce4-panel-profiles/start) app.
- Copy the `xmonad` folder of your home folder ,rename it as `.xmonad` and run `xmonad --recompile`
- Copy all contents of the `config` folder in the `.config` folder of your home folder
- Copy the `switch.sh` script inside your home folder.
This process needs to be done for all the users you want to have access to this desktop.  
Optionally you can add a keybinding inside XFCE Settings for `sh ~/switch.sh` to trigger the switch using keyboard.You can also set the script to run on startup to instantly drop to the tiling layout.
## Required applications
- xfce4
- xfce4-panel-profiles
- plank
- picom
- xmonad
- xmonad-contrib
To install these ,look up the package names and the installation commands for your distro.It's recommended to have these packages installed **BEFORE** running any of the steps above.
