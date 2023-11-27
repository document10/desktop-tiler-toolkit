# Desktop tiler toolkit

This repository is a collection of configs and scripts to add ondemand tiling functionality for multiple desktop environments(for now only XFCE and MATE are supported).Simply press a button on the panel to activate it.  
[How the desktop works](https://imgur.com/gallery/LZEiIZW)  

## How it works

The main switch.sh script switches from a selected WM as the "Default WM" for the session to a highly specialised Xmonad config,alongside picom for compositing.

## Known issues

There are some issues with this desktop which I hope can be fixed.They are:

- After switching WMs you lose windows outside of the current desktop
- The switch can get janky at times,especially if you do it often without logging out.
- WM-independent keybinds (like launching a terminal) are supposed to be managed by the XFCE session, so they aren't included in the xmonad config to avoid conflincts.

Because of these issues I don't advise using this as your daily driver ,until all issues (known and unknown) get solved.Anyone with the knowledge to fix these issues is welcome to create a PR.

## Installation

```sh
git clone https://github.com/document10/xfce4-tiling-mode/
cd xfce4-tiling-mode
sh install.sh
```

Optionally you can add a keybinding inside XFCE Settings for `sh ~/switch.sh` to trigger the switch using keyboard.You can also set the script to run on startup to instantly drop to the tiling layout.

## Required packages

- xfce4
- xfce4-panel-profiles
- plank
- picom
- xmonad
- xmonad-contrib

To install these ,look up the package names and the installation commands for your distro.It's recommended to have these packages installed **BEFORE** running any of the steps above.So far I only tested this on Endeavour OS but more testinq will be done soon.
