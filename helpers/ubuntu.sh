function unlock {

	export DISPLAY=:0 
	gnome-screensaver
	gnome-screensaver-command -d

}

function lock {

	export DISPLAY=:0 
	gnome-screensaver
	gnome-screensaver-command -l
}
