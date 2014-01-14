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

# this is useful in other commands that I want to store passwords in for etc
function main_password {

	security find-generic-password -gs main_password -w | tr -d '\n'	


}

# for my development machine, I have a keychain entry called local_password, grab it with this function
function local_password {

	security find-generic-password -gs local_password -w | tr -d '\n'
}

# unmount a disk
function eject {

	diskutil unmountDisk $1
	diskutil eject $1
}


# show current power on the command line
function power {

	/usr/sbin/ioreg -l | awk 'BEGIN{a=0;b=0} 
	$0 ~ "MaxCapacity" {a=$5;next}	
	$0 ~ "CurrentCapacity" {b=$5;nextfile}
	END{printf("%.2f", b/a * 100);print("%")}'

}

