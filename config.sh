export CPPFLAGS=-I/opt/X11/include

if [[ $SHELL == "/bin/bash" ]]; then
	export PS1="\[\033[1;30m\]\h:\W \u\$ \[\033[0m\]"
fi

# HISTORY FILE SIZE
HISTFILESIZE=1000000000
HISTSIZE=1000000

# SYSTEM STUFF
EDITOR='/Applications/Sublime\ Text\ 2.app/Contents/MacOS/Sublime\ Text\ 2.app'



PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
