#!/bin/bash

# Clone dotfiles
export DOTFILES="$HOME/minidots"
[ -d $DOTFILES ] && rm -rf $DOTFILES

cd && git clone https://github.com/oljfte/minidots.git

# Run setup scripts for global configs
for setup_script in $DOTFILES/*/setup.sh; do bash $setup_script; done

# Temporarily export PATH for current shell
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

# Change shell to Zsh
sudo chsh -s "$(command -v zsh)" "${USER}"
