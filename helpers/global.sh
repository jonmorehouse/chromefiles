# general one-liners
alias clear_logs='sudo rm -rf /private/var/log/asl/*.asl'
alias export_display='export DISPLAY=:0'
alias simple_server='python -m SimpleHTTPServer'
alias reload='source ~/.bash_profile'
alias clear_logs='sudo rm -rf /private/var/log/asl/*.asl'
alias html_2_pdf='wkhtmltopdf'


# get the absolute path of a file
function path {

	if [[ ${1} == "." || ${1} == ".." ]]; then
		_path="`pwd`"

	else
		_path="`pwd`/${1}"
	fi

	echo "${_path}"
}

# need to listen to directory changes -- not sure how this can be accomplished
function cd {
	# check if the file exist and then will load the file
	builtin cd ${1} #move to the specified directory

	# now see if the file exists
	if [[ -f ./.shell_config ]]; then
		#statements
		source .shell_config
		echo "Source Loaded."
	fi
}

