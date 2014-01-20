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

	# initialize global configuration elements
	$directory/helpers/load.sh #these are one liners -- generally will not have many shortcuts but more can be enabled for each segment

	# initialize personal helpers as needed
	$directory/personal/aliases.sh #include the proper directory shortcuts I have configured
	$directory/personal/config.sh  #general system configuration
)

# load each of the into our current shell
for file in $files
do
	load $file
done

# load all of our export settings into this shell
for file in `ls $directory/personal/*.exports`
do
	\. $HOME/dotfiles/scripts/load_export_file $file
done


