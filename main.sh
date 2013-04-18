#this is the main dotfile loader
# in the future 
directory=~/dotfiles/
# SHELL=/bin/bash

function load {

	if [[ -e "${1}" ]]; then

		source ${1}

	else	
		echo "File not found. ${1}"
	fi
}


load $directory/bash_config/paths.sh  #general path config
load $directory/bash_config/config.sh  #general system configuration
 
# load in custom shortcuts etc
load $directory/bash_config/directories.sh #include the proper directory shortcuts I have configured
load $directory/bash_config/personal.sh  #these are sshs, passwords, logins etc THIS SHOULD NOT BE COMMITED
load $directory/programs/main.sh #these are installed programs that I actually have installed. Longer shell scripts etc
load $directory/helpers/main.sh #these are one liners -- generally will not have many shortcuts but more can be enabled for each segment


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias reload='load ~/dotfiles/main.sh && cd .'
