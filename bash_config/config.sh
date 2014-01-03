###
### Initialize CPP Settings
###
export CPPFLAGS=-I/opt/X11/include

# initialize package config for homebrew path etc
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

# link up the correct gcc
alias gcc='/usr/local/bin/gcc-4.2'
export CC=

###
### Initialize general BASH settings
###
# HISTORY FILE SIZE
HISTFILESIZE=1000000000
HISTSIZE=1000000

# SYSTEM STUFF
EDITOR='vim'

# initialize the 
if [[ $SHELL == "/bin/bash" ]]; then
	export PS1="\[\033[1;30m\]\h:\W \u\$ \[\033[0m\]"
fi


###
### Initialize RVM script to boot up properly
###
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

### 
###  Initailize virtualenvwrpaper
### 
source `which virtualenvwrapper.sh`

### 
### Initialize GO Settings
###
# export our go package location
export GOPATH=$HOME/go
PATH=$PATH:$GOPATH/bin
# now set our gopath
GOROOT=/usr/local/Cellar/go/1.1.2
export GOROOT

###
### Initialize PATH settings for various applications
###

# update python path for compatibility with homebrew version of bazaar
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PMDPATH=$HOME/dotfiles/bin/pmd/pmd

###
### Initialize Path Settings and Elements
###
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# add global gemset into the path
PATH=$PATH:$HOME/.rvm/gems/ruby-1.9.3-p362@global/bin
# add custom php installation into path
PATH=$PATH:/usr/local/php/bin:/usr/local/apache2/bin
# export further custom path functionality
PATH=:/usr/local/share/npm/bin:/Users/MorehouseJ09/Resources/helper_programs:/Users/MorehouseJ09/Resources/programs:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/local/php/bin:/usr/local/Cellar/php54/5.4.5/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/apache2/bin:/usr/local/nginx/sbin:/usr/local/ec2-api-tools/bin:/usr/local/src/jpeg-8c:/usr/local/php/bin
# now lets add my custom bin location for custom scripts etc to live!
PATH=$PATH:$HOME/dotfiles/bin

# now export the final path
export PATH

