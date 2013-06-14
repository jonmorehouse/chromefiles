#this is the main dotfile loader
# in the future 
directory=~/dotfiles/
SHELL=/usr/local/bin/zsh #current shell

HIST_VERIFY="false"
# stop all autocorrection
unsetopt correct_all
# set up the vim keyword mode for zsh
bindkey -v

# this is important -- substituting the git command to use hub!
alias git='hub'

function load {

	if [[ -e "${1}" ]]; then

		source ${1}

	else	
		echo "File not found. ${1}"
	fi
}

load $directory/bash_config/paths.sh  #general path config
load $directory/bash_config/config.sh  #general system configuration
load $directory/bash_config/temp.sh #load in some temporary aliases etc
load $directory/config/auto_completions.zsh #load in zsh auto completions
load $directory/bash_config/directories.sh #include the proper directory shortcuts I have configured
load $directory/bash_config/personal.sh  #these are sshs, passwords, logins etc THIS SHOULD NOT BE COMMITED
load $directory/helpers/main.sh #these are one liners -- generally will not have many shortcuts but more can be enabled for each segment

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias reload='load ~/dotfiles/main.zsh && custom_shell && local_restart'
alias r='load ~/dotfiles/main.zsh && custom_shell && local_restart'

# unset -f cd

