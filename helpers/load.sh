# include the global helpers 
local_directory=~/dotfiles/helpers

# any files that you want ignored go here!
ignored=(

	"load.sh"
	"zshell-theme.zsh"
)

for file in `ls $local_directory`
do

	found=
	for ignore in ${ignored[@]}
	do
		if [ "$ignore" = "$file" ]
		then

			let found=true
		fi
	done

	# if the file shuold have been ignored - then go ahead and skip this $file
	if [ "$found" ]
	then

		continue

	# if not flagged - then load the file
	else
		load $local_directory/$file
	fi
done

# clean up any variables that may cause bash shell weirdness
local_directory=

