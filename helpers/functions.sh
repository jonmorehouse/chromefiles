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

function custom_shell {

	# now see if the file exists
	if [[ -f ./.shell_config ]]; then
		#statements
		source .shell_config
		echo "Source Loaded."
	fi
	
}

# deactivate the cd function overwrite because it was messing up functionality with our application etc
# need to listen to directory changes -- not sure how this can be accomplished
# function cd {
# 	# check if the file exist and then will load the file
# 	builtin cd ${1} #move to the specified directory
	
# 	# now see if the file exists
# 	if [[ -f ./.shell_config ]]; then
# 		#statements
# 		source .shell_config
# 		echo "Source Loaded."
# 	fi

# 	ls
# }


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






