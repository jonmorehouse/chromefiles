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

# export our go package location
export GOPATH=$HOME/go
PATH=$PATH:$GOPATH/bin

# add global gemset into the path
PATH=$PATH:$HOME/.rvm/gems/ruby-1.9.3-p362@global/bin

# add custom php installation into path
PATH=$PATH:/usr/local/php/bin:/usr/local/apache2/bin
PATH=$PATH:/usr/local/apache2/bin

# now lets add my custom bin location for custom scripts etc to live!
PATH=$PATH:$HOME/dotfiles/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# force tmux to try and load in the rvmrc file each time you create a new tmux window
cd .

PATH=:/usr/local/share/npm/bin:/Users/MorehouseJ09/Resources/helper_programs:/Users/MorehouseJ09/Resources/programs:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/local/php/bin:/usr/local/Cellar/php54/5.4.5/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/apache2/bin:/usr/local/nginx/sbin:/usr/local/ec2-api-tools/bin:/usr/local/src/jpeg-8c:/usr/local/php/bin

export PATH

