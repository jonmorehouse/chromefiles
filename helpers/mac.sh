# lock the machine
alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# prevent the creation of ds_store files
# defaults write com.apple.desktopservices DSDontWriteNetworkStores true

alias clean_ds='find / -name ".DS_Store" -depth'


# clean up unwanted system files that cause problems when syncing to s3 / dropbox / copying in general
function clean_system {

	sudo find / -type f -name ".DS_Store" -or -name "Icon^M" -or -name "Icon?" -exec rm {} \;

}