# include the global helpers 
local_directory=~/dotfiles/helpers

# switch shell  -- chsh -s /usr/bin MorehouseJ09


load $local_directory/amazon.sh #amazon specific
load $local_directory/programs.sh #program shortcuts
load $local_directory/global.sh #useful for global methods that shouldn't go anywhere else
load $local_directory/redis.sh #useful redis helpers -- not global
load $local_directory/functions.sh 
load $local_directory/tmux.sh #global tmux configuration
load $local_directory/ls.sh #load in the custom listing command
load $local_directory/images.sh #load image helpers etc 
load $local_directory/networking.sh #networking utilities
load $local_directory/javascript.sh #javascript / node helper utilities
load $local_directory/git.sh #github shortcuts
load $local_directory/mac.sh #mac only shortcuts
load $local_directory/t.sh #load up t for local tasks etc
# load $directory/ubuntu.sh #ubuntu only
