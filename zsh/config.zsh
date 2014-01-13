# stop all autocorrection
unsetopt correct_all
# set up the vim keyword mode for zsh
bindkey -v

# now lets set up our history searching for forward / reverse searching
bindkey '^R' history-incremental-search-backward

# history settings
setopt hist_ignore_all_dups
setopt hist_ignore_space





