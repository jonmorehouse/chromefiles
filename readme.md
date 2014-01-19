Dotfiles
========

Installation Instructions
-------------------------

* clone dotfiles `git clone git@github.com:jonmorehouse/dotfiles $HOME/dotfiles`
* install `cd $HOME/dotfiles && ./install.sh`

Notes
-----

* Look in core.sh to observe how dependencies are loaded
* backup this folder on your own
* all personal configuration goes in personal 
  
  * ex: gitconfig (with your tokens)
  * ex: tmuxinator folder for symlinking into HOME/.tmuxinator
  * ex: muttrc that includes the symlinked global muttrc

References / Inspiration
------------------------

* [dotfiles.github.io](http://dotfiles.github.io/)
* [Adam V Dotfiles](https://github.com/adamv/dotfiles)





