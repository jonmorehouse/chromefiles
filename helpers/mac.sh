# lock the machine
alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# prevent the creation of ds_store files
# defaults write com.apple.desktopservices DSDontWriteNetworkStores true

alias clean_ds='find / -name ".DS_Store" -depth'

# clean up unwanted system files that cause problems when syncing to s3 / dropbox / copying in general
function clean_system {

	sudo find / -type f -name ".DS_Store" -or -name "Icon^M" -or -name "Icon?" -exec rm {} \;

}

# move terminal windows around
# alias terminal_left='$(printf "\e[3;0;0t\")'
# http://apple.stackexchange.com/questions/33736/can-a-terminal-window-be-resized-with-a-terminal-command
# http://forums.macrumors.com/showthread.php?t=229161

alias pmd='$HOME/dotfiles/bin/pmd/pmd'
