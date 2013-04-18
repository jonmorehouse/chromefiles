Jon Morehouse's DotFiles Configuration
=

THIS DOCUMENTATION IS OUT OF DATE.

** I'm working on this project daily and things seem to have gotten a bit sloppy. I'm going to rework the entire repo structure to keep this from being a catch-all**



Overview
=

Any app that needs these files (tmux, screen, bash etc needs to load in just the main file)
Future functionality will include specific file requirements as well. This could be db driven at some point

Main File
=

Includes:
-

-	paths -- system paths and some general config
-	directories -- these are directory shortcuts to projects etc around my machine
-	config -- this is general config for things such as rvm source etc
-	personal -- could include private data. Will not be pushed and will include personal ssh logins etc
-	programs/main -- this is a list of all the applications installed. Programs will be installed in same directory under same name. This configuration will come later
-	helpers/main -- each program / topic will have its own dotfiles. These can stand as config files / one-liners and can be commented out etc at my leisure. Examples: server admin, find, sed_grep_grub etc etc

App_Config
=

-	main dotfiles are symlinked here, things such as .tmux etc etc
-	these are different from helpers because helpers are one liners that change, these shouldn't change often etc
-	this is where my configuration files for certain elements will go. Things such as the .rvmrc files etc

Pkg-Config
=

-	Store all of my pkg-config files for my libraries / code that is downloaded
-	These can then be easily edited when configuring a machine and symlinked properly
-	In the future, I will right a quick script to automatically update a machine's proper include directories etc	

