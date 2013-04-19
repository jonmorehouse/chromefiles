#Install script should be responsible for putting all scripts in their proper bin locations
#Should be responsible for installing all of the proper plist files as well as sufficient management for everything

files=`find plist/*.plist -not -name "*example*"`

link() {

	echo ${1}
}

# loop through all of the files etc and 
for file in $files
do
	link $file
done

