# Coding environment as 12.2023

Terminal emulations runs on top of Alacritty and uses Fish as the command line shell. Both shine thanks to their extensive configuration options, high performance (Alacritty), availability of Vi-like bindings (Alacritty and Fish) and minimalistic options for prompt customization (Fish). Neofetch adds a small bit of information to the initial line of the terminal.

The IDE in this case is Neovim (`https://neovim.io/`), which capitalizes all the strengths of Vim and adds a huges amounts of extensibility on top. A classical configuration file (`nvim_classic/init.vim`, fully compatible with Vim in theory) has all the tools to get started with Python coding (colorscheme, linting, omni-completion, statusline, start screen, telescope). Additionally, an experimental config written in Lua (`nvim_lua/init.lua`) is being tested at the moment.

All configuration files are live in this repo:

```
❯ tree dotfiles/

dotfiles/
├── alacritty.yml                           # Terminal emulator
├── fish                                    # Terminal shell 
│   ├── fish_variables                      # Fish colorscheme
│   └── functions
│       ├── fish_greeting.fish              # Initialize Neofetch
│       ├── fish_mode_prompt.fish           # Set Vi-mode
│       ├── fish_prompt.fish                # Minimalistic prompt
│       └── fish_user_key_bindings.fish     # Vi-like keybindings
├── neofetch.conf                           # Neofetch settings
├── nvim_classic                            # Compatible with Vim
│   └── init.vim
├── nvim_lua                                # New config style by NeoVim
│   └── init.lua
├── README.md                               # This file
└── tmux.conf                               # Maybe gone in the future?

4 directories, 11 files
```

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

## Install Neovim (`https://neovim.io/`)

```
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar -xzf nvim-linux64.tar.gz
sudo cp nvim-linux64/bin/nvim /usr/bin/
sudo cp -r nvim-linux64/share/nvim usr/share/nvim
```
