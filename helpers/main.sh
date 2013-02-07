# include the global helpers 
directory=~/dotfiles/helpers/

# switch shell  -- chsh -s /usr/bin MorehouseJ09


load $directory/amazon.sh #amazon specific
load $directory/programs.sh #program shortcuts
load $directory/global.sh #useful for global methods that shouldn't go anywhere else
load $directory/functions.sh 
load $directory/tmux.sh #global tmux configuration
load $directory/ubuntu_stuff.sh #ubuntu builder stuff
load $directory/networking.sh #networking utilities
load $directory/javascript.sh #javascript / node helper utilities
load $directory/git.sh #github shortcuts
load $directory/mac.sh #mac only shortcuts
# load $directory/ubuntu.sh #ubuntu only