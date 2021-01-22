if ! command -v brew &> /dev/null; then
    bash $DOTFILES/brew/setup.sh
fi

# Environment variables
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
