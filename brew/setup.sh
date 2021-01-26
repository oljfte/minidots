#!/bin/bash

if ! command -v brew &> /dev/null; then
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
fi

brew bundle --file "$DOTFILES/brew/Brewfile"

echo "Done brew setup."
