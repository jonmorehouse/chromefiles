alias nose='nosetests --with-watch --nocapture .'
alias count-python='cloc --exclude-dir=bin,lib,include,src/gevent . '
alias fabll='fab --list-format=nested --list'
alias fabl='fab --list'
alias nose='nosetests --nocapture --nologcapture .'

# clear a virtualenvironement after use
function clear-virtualenv {

	# remove virtualenv dependencies
	rm -rf bin/ build/ include/ lib/
	rm -rf man
	rm -rf .Python
	rm -rf docs
	rm -rf dist

	# now remove egg files as needed
	rm -rf *egg(N)
	rm -rf *eggs(N)
	rm -rf *egg-info(N)
}

function install-virtualenv {

	# make sure we are in a virtual environment first
	if [ ! -d bin ]
	then

		virtualenv . 

	fi

	# source teh element
	source bin/activate

	for i in `ls *requirements.txt 2> /dev/null` 
	do
		echo $i
		pip install --ignore-installed -r $i --src eggs
	done
}


