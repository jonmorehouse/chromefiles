# lock the machine
alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# prevent the creation of ds_store files
# defaults write com.apple.desktopservices DSDontWriteNetworkStores true

alias clean_ds='find / -name ".DS_Store" -depth'