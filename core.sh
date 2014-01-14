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
	# initialize global configuration elements
	$directory/helpers/load.sh #these are one liners -- generally will not have many shortcuts but more can be enabled for each segment

	# initialize personal helpers as needed
	$directory/personal/aliases.sh #include the proper directory shortcuts I have configured
	$directory/personal/credentials.sh # initialize credentials 
	$directory/personal/config.sh  #general system configuration
	$directory/personal/machines.sh
)

# load each of the files in 
for file in $files
do

	load $file
done


