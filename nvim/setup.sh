#!/bin/bash

[ ! -e ~/.config/nvim/colors ] && mkdir -p ~/.config/nvim/colors 
[ ! -e ~/.config/nvim/snippets ] && mkdir -p ~/.config/nvim/snippets
ln -fs $DOTFILES/nvim/init.vim ~/.config/nvim
ln -fs $DOTFILES/nvim/coc-settings.json ~/.config/nvim
ln -fs $DOTFILES/nvim/colors/* ~/.config/nvim/colors

echo "Done nvim setup."
