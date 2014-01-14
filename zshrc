th to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

plugins=(brew)

ZSH_THEME="theme.zsh"
ZSH_CUSTOM=~/dotfiles/zsh
MY_ZSH_THEME=$ZSH_THEME; ZSH_THEME=''

# OH MY ZSH!
source $ZSH/oh-my-zsh.sh
 
# TODO: remove this when bug is fixed in oh-my-zsh
# Workaround for loading theme from $ZSH_CUSTOM
# Github issue: https://github.com/robbyrussell/oh-my-zsh/pull/1107
source "$ZSH_CUSTOM/$MY_ZSH_THEME"
# Example aliases

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse gem github npm osx rvm sublime svn vi-mode git-extras)


unsetopt cdablevarS
unsetopt correct_all


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


source $HOME/dotfiles/bootstrap.zsh


