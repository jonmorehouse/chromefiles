alias nose='nosetests --with-watch --nocapture .'
alias clear-virtualenv='rm -rf bin/ build/ include/ lib/'
alias install-virtualenv='pip install --ignore-installed -r requirements.txt --src eggs'
alias count-python='cloc --exclude-dir=bin,lib,include,src/gevent . '
alias fabll='fab --list-format=nested --list'
alias fabl='fab --list'
alias nose='nosetests --with-watch --nocapture --nologcapture .'



