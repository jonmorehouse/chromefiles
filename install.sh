# install submodules if not properly installed
git submodule foreach --recursive git submodule update --init

# install oh-my-zshell
if [ ! -d $HOME/.oh-my-zsh ]
then
	git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi

# install symlinks
for symlink in `ls symlinks`
do
	# override any symlinks currently existing
	ln -f -s `pwd`/symlinks/$symlink $HOME/.$symlink
done

# update gitconfig -- append correct element to the top of our current gitconfig file
echo "[include]\n\tpath = $HOME/.gitsettings\n\n" >> $HOME/.gitconfig

# install vim script
vim/install.sh

# run brew bundle on your own time -- in case there are issues ...
brew bundle

# now lets run all of the commands in our cask file -- lets make a patch on this later
for line in `cat Caskfile | grep -v \#`
do
	cask $line
done

# bootstrap rvm 
if [ ! -d $HOME/.rvm ]
then
	curl -sSL https://get.rvm.io | bash -s stable --ruby
	source $HOME/bootstrap
	rvm install 2.0.0
fi


