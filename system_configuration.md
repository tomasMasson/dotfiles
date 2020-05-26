# Alacritty+Zsh+Tmux+Neovim+Miniconda

# Install Alacritty terminal emulator
sudo pacman -Syu alacritty

# Install Neovim as editor 
sudo pacman -Syu neovim
# Install Deoplete plugin for Python completion

# Install & configure Zsh
sudo pacman -Syu zsh
zsh /usr/share/zsh/functions/Newuser/zsh-newuser-install -f
# Make Zsh the default shell
chsh -s $(which zsh)

# Install Pure Zsh theme
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure
# Add to .zshrc
fpath+=$HOME/.zsh/pure
# Initialize Pure in the .zshrc
autoload -U promptinit; promptinit
prompt pure

# Install Tmux
sudo pacman -Syu tmux
# Prepare a dev fixed layout in Tmux
~/dev-tmux.sh

# Install Miniconda package manager
bash Miniconda3-latest-Linux-x86_64.sh

# Configuration files
~/.alacritty.yml
~/.config/nvim/init.vim
~/.tmux.conf
~/.zshrc
