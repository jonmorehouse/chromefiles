#this is the main dotfile loader
# in the future 
directory=$HOME/dotfiles/
HIST_VERIFY="false"

function load {

	if [[ -e "${1}" ]]; then

		source ${1}

	else	
		echo "File not found. ${1}"
	fi
}

load $directory/bash_config/config.sh  #general system configuration
load $directory/bash_config/shortcuts.sh #include the proper directory shortcuts I have configured
load $directory/bash_config/personal.sh  #these are sshs, passwords, logins etc THIS SHOULD NOT BE COMMITED
load $directory/helpers/main.sh #these are one liners -- generally will not have many shortcuts but more can be enabled for each segment

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias r='reload'




