# Coding environment as 12.2023

Terminal emulations runs on top of Alacritty and uses Fish as the command line shell. Both shine thanks to their extensive configuration options, high performance (Alacritty), availability of Vi-like bindings (Alacritty and Fish) and minimalistic options for prompt customization (Fish). Neofetch adds a small bit of information to the initial line of the terminal.

All configuration files are live in this repo.

## Install Alacritty (`https://github.com/alacritty/alacritty/blob/master/INSTALL.md`)

*Arch*:

```
sudo pacman -S cmake freetype2 fontconfig pkg-config make libxcb libxkbcommon python
cargo install alacritty
```

*Debian/Ubuntu*:

```
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
cargo install alacritty
```

## Install Fish shell (`https://fishshell.com/`)

*Arch*:

`sudo pacman -Syu fish`

*Debian/Ubuntu*:

```
wget https://launchpad.net/~fish-shell/+archive/ubuntu/release-3/+files/fish_3.6.4-1~xenial_amd64.deb
sudo dpkg -i fish_3.6.4-1~xenial_amd64.deb
```

## Install Neofetch (`https://github.com/dylanaraps/neofetch/wiki/Installation`)

*Arch*:

`sudo pacman -S neofetch`

*Debian/Ubuntu*:

```
sudo apt-get update
sudo apt-get install neofetch
```
