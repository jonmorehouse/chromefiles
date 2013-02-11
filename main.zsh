#this is the main dotfile loader
# in the future 
directory=~/dotfiles/
SHELL=/usr/local/bin/zsh #current shell

HIST_VERIFY="false"
unsetopt correct_all
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

load $directory/paths.sh  #general path config
load $directory/config.sh  #general system configuration
load $directory/config/auto_completions.zsh #load in zsh auto completions
# load in custom shortcuts etc
load $directory/directories.sh #include the proper directory shortcuts I have configured
load $directory/personal.sh  #these are sshs, passwords, logins etc THIS SHOULD NOT BE COMMITED
load $directory/programs/main.sh #these are installed programs that I actually have installed. Longer shell scripts etc
load $directory/helpers/main.sh #these are one liners -- generally will not have many shortcuts but more can be enabled for each segment

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias reload='load ~/dotfiles/main.zsh && cd .'
