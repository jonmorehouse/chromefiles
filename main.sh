#this is the main dotfile loader
# in the future 
directory=~/dotfiles/
# SHELL=/bin/bash


source $directory/paths.sh  #general path config
source $directory/config.sh  #general system configuration

 
# load in custom shortcuts etc
source $directory/directories.sh #include the proper directory shortcuts I have configured
source $directory/personal.sh  #these are sshs, passwords, logins etc THIS SHOULD NOT BE COMMITED
source $directory/programs/main.sh #these are installed programs that I actually have installed. Longer shell scripts etc
source $directory/helpers/main.sh #these are one liners -- generally will not have many shortcuts but more can be enabled for each segment


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
