# Desktop tiler toolkit

This repository is a collection of configs and scripts to add ondemand tiling functionality for multiple desktop environments(for now only XFCE and MATE are tested).
[How the desktop works](https://imgur.com/gallery/LZEiIZW)  


## How it works

The main switch.sh script switches from a selected WM as the "Default WM" for the session to a highly specialised Xmonad config,alongside picom for compositing.  
The script is executed in the following way:

```sh
sh switch.sh
```

## Installation

1. Run the `install.sh` script included in the repo:

```sh
git clone https://github.com/document10/desktop-tiler-toolkit
cd desktop-tiler-toolkit
sh install.sh [DE]
```

Replace DE with one of the supported desktop environments (`xfce4` or `mate`,case sensitive).Running the script with no arguments will also tell you what DEs are supported.

2. Assign the command `sh switch_xfce4.sh` or `sh switch_mate.sh` (depending on yor DE) to a panel button or a keyboard shortcut of your choice.

3. Add `plank` to the session autostart.

## Known issues

There are some issues with this desktop which I hope can be fixed.They are:

- After switching WMs you lose windows outside of the current desktop
- The switch can get janky at times,especially if you do it often without logging out.
- WM-independent keybinds (like launching a terminal) are supposed to be managed by the desktop session, so they aren't included in the xmonad config to avoid conflincts.

Because of these issues I don't advise using this as your daily driver ,until all issues (known and unknown) get solved.Anyone with the knowledge to fix these issues is welcome to create a PR.

## Required packages

- plank
- picom
- xmonad
- xmonad-contrib

To install these ,look up the package names and the installation commands for your distro.It's recommended to have these packages installed **BEFORE** running any of the steps above.So far I only tested this on Endeavour OS (Arch) but more testing will be done soon.
