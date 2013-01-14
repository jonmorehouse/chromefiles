function create_usb_stick {

	# assumes that we want to use /dev/disk1
	hdiutil convert -format UDRW -o ubuntu $1
	diskutil unmountDisk /dev/disk1
	sudo dd if=ubuntu.dmg of=/dev/rdisk1 bs=1m
}


function delete_drive {

	diskutil eraseDisk HFS+ newdisk $1

}