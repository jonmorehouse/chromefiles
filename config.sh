export CPPFLAGS=-I/opt/X11/include

if [[ $SHELL == "/bin/bash" ]]; then
	export PS1="\[\033[1;30m\]\h:\W \u\$ \[\033[0m\]"
fi

# HISTORY FILE SIZE
HISTFILESIZE=1000000000
HISTSIZE=1000000

# SYSTEM STUFF
# EDITOR='/Applications/Sublime\ Text\ 2.app/Contents/MacOS/Sublime\ Text\ 2.app'
EDITOR='vim'

PKG_CONFIG_PATH=/usr/local/jansson/

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PATH=$PATH:$HOME/.rvm/gems/ruby-1.9.3-p362@global/bin


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# force tmux to try and load in the rvmrc file each time you create a new tmux window
cd .

