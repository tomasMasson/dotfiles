# Pure theme
fpath+=$HOME/.zsh/pure
# Initialize prompt system and Pure
autoload -U promptinit; promptinit
prompt pure

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
#
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tmasson/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Color ls output
alias ls='ls --color=auto'

# Display system properties with neofetch
neofetch

# Keep track of dotfiles at $HOME
alias config='/usr/bin/git --git-dir=/home/tmasson/.myconfig --work-tree=/home/tmasson'

# Alias to open pdf files
alias open='xdg-open'

# Add Diamond path (fro Broccoli)
export PATH=/home/tmasson/diamond:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/tmasson/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/tmasson/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/tmasson/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/tmasson/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
