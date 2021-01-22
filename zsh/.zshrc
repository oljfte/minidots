export DOTFILES="$(echo ~)/minidots"

# Basic configs
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt nonomatch

# Additional configs
for config in `ls -1 $DOTFILES/zsh/_[^_]*\.zsh`; do
    source $config
done
