alias nose='nosetests --with-watch --nocapture .'
alias clear-virtualenv='rm -rf bin/ build/ include/ lib/'
alias count-python='cloc --exclude-dir=bin,lib,include,src/gevent . '
alias fabll='fab --list-format=nested --list'
alias fabl='fab --list'
alias nose='nosetests --with-watch --nocapture --nologcapture .'

function install-virtualenv {

	for i in `ls *requirements.txt` 
	do
		echo $i
		pip install --ignore-installed -r $i --src eggs
	done
}






