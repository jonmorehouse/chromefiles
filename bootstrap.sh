#this is the main dotfile loader
# in the future 
directory=$HOME/dotfiles

# specialized loader function
function load {

	if [[ -e "${1}" ]]; then
		source ${1}
	else	
		echo "File not found. ${1}"
	fi
}

# create a list of all files that need to be loaded
files=(

	# initialize system profile
	/etc/profile

	# if rvm is installed we need to load its configuration bootstrap
	$HOME/.rvm/scripts/rvm

	# initialize global configuration elements
	$directory/helpers/load.sh #these are one liners -- generally will not have many shortcuts but more can be enabled for each segment

	# initialize personal helpers as needed
	$directory/personal/aliases.sh #include the proper directory shortcuts I have configured
)

# load each of the into our current shell
for file in $files
do
	load $file
done

# load all of our export settings into this shell
# all exports are loaded up 
for file in `ls $directory/personal/*.exports`
do
	\. $HOME/dotfiles/scripts/load_env_file $file
done


# load in a default exports file if applicable 
if [[ ! -z "$EXPORTS_FILE" && -f $EXPORTS_FILE ]]
then
	\. $HOME/dotfiles/scripts/load_env_file $EXPORTS_FILE
fi

