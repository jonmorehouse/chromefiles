alias status='git status --short --branch'
alias co='git checkout'
alias cim='git commit -a -m'
alias ci='git commit'
alias push='git push'
# save our state to the last push etc
alias save='git commit -a --amend --no-edit && git push --force'
alias count_commits='git rev-list HEAD --count'

# number of comimts = git shortlog -s -n
# git ls-tree --name-only HEAD
# git submodule update --recursive
#git submodule update --init
# set up github editor default
# git config --global core.editor "pico"

#Checkout an older version
#git co HEAD~n .
#git co HEAD~n -- filename
alias git-update='git submodule foreach "git add --all && git fetch && git checkout master && git pull origin master && git reset --hard HEAD"'

