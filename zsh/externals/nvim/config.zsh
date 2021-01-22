# Basic configs
bindkey -v
bindkey "^?" backward-delete-char

# Functions
autoload -z $(dirname $0)/functions/*

# ZLE
function vi-yank-xclip {
    zle vi-yank
   echo "$CUTBUFFER" | pbcopy -i
}

zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip

# Aliases
alias vi="vim"
alias vim="nvim"
