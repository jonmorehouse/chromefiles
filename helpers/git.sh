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

# set up custom merge element
function git.merge {

	# functionality
	# 1.) if no branch given grab the current branch
	# 2.) check that this other branch is not the master
	# 3.) if it is throw error and exit -- can't merge onto the same branch
	# 4.) if not do the merge onto the master	
	
	# branch that we are switching too
	switchBranch="master" 
	branch="${1}"

	if [[ "$branch" == "" || ${#branch} -eq 0 ]]; then

		# need to grab the current branch and set that as branch
		branch=$(git branch | grep "*" | awk '{ print $2 }')

	fi

	if [[ "$branch" == "$switchBranch" ]]; then

		# can't merge onto the same branches
		echo "Already on $switchBranch can't merge self onto self."
		return
	fi

	# now that we know that these are two valid branchs to be merged etc, we can go forth
	git co "$switchBranch"
	git merge "$branch"
	git push origin master
	git co "$branch"

}
