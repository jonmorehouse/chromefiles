# get the absolute path of a file
function path {

	if [[ ${1} == "." || ${1} == ".." ]]; then
		_path="`pwd`"

	else
		_path="`pwd`/$1"
	fi

	echo "${_path}"
}

# path.copy is directly dependent upon the path segment from above
function pathc {

	path ${1} | pbcopy
			
}

# this is useful in other commands that I want to store passwords in for etc
function main_password {

	security find-generic-password -gs main_password -w | tr -d '\n'	


}

# for my development machine, I have a keychain entry called local_password, grab it with this function
function local_password {

	security find-generic-password -gs local_password -w | tr -d '\n'

}

# create a function that is useful for loading in custom configuration for local projects
function custom_shell {

	# now see if the file exists
	if [[ -f ./.shell_config ]]; then
		#statements
		source .shell_config
		echo "Source Loaded."
	fi
	
}

# create a function to restart a directory project that is being watched
function local_restart {

	if [[ -f ./.restart ]]; then

		touch ./.restart

	elif [[ -f ./.restart.py ]]; then

		touch ./.restart.py
	fi

}

# unmount a disk
function eject {

	diskutil unmountDisk $1
	diskutil eject $1
}

function power {

	/usr/sbin/ioreg -l | awk 'BEGIN{a=0;b=0} 
	$0 ~ "MaxCapacity" {a=$5;next}	
	$0 ~ "CurrentCapacity" {b=$5;nextfile}
	END{printf("%.2f", b/a * 100);print("%")}'

}

function reload {
	
	# check to see if current shell is zsh or not so we can load proper main files
	if [[ $SHELL == */zsh ]];then

		source $HOME/dotfiles/main.zsh		
	else
		
		source $HOME/dotfiles/main.sh		
	fi
	
	# load up any .shell_configs
	custom_shell

	# restart any watch processes etc
	local_restart

	# check to see if we are currently running a  virtualenv in python
	if [[ -d bin && -f bin/activate ]];then
		
		source bin/activate
	fi
}

