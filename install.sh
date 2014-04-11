# install submodules if not properly installed
# make this script callable from anywhere!
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git submodule foreach --recursive git submodule update --init

# install oh-my-zshell
if [ ! -d $HOME/.oh-my-zsh ]; then
	git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi

# install symlinks
for symlink in $(ls symlinks | grep -v plist); do
	# override any symlinks currently existing
	ln -f -s $DIR/symlinks/$symlink $HOME/.$symlink
done

# install personal symlinks
if [ -d $DIR/personal/symlinks ]; then
  for symlink in $(ls $DIR/personal/symlinks); do
    ln -f -s $DIR/personal/symlinks/$symlink $HOME/.$symlink
  done
fi


# now install all launchagent plist files into the launchagents directory
for symlink in $(ls symlinks | grep plist); do
	# install the symlink (forcefully) 
	ln -f -s $DIR/symlinks/$symlink $HOME/Library/LaunchAgents/$symlink
done


