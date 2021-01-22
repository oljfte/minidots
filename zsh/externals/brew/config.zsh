# Environment variables
if ! command -v brew &> /dev/null; then
    bash $DOTFILES/brew/setup.sh
fi

eval $($(brew --prefix)/bin/brew shellenv)
