#Install script should be responsible for putting all scripts in their proper bin locations
#Should be responsible for installing all of the proper plist files as well as sufficient management for everything

files=`find plist/*.plist -not -name "*example*"`

# specify the plist directory for installation here so that we can configure this later
directory=$HOME/Library/LaunchAgents
# specify the root directory to put plist files in etc
root_directory=/System/Library/LaunchDaemons

# reference url for site
# https://developer.apple.com/library/mac/#documentation/Darwin/Reference/ManPages/man5/launchd.plist.5.html


link() {

	# want to check if the file exists and if it doe, remove the ln
	# then ln our new element

}

# loop through all of the files etc and 
for file in $files
do
	link $file
done

