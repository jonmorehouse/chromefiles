alias git.status='git status --short'
alias git.push='git push -u origin'
alias git.reset='git reset --hard HEAD^' #resets the head and will delete all changes since last commit
alias git.pull='git pull -u origin' #pull down origin
alias git.commit='git commit -a -m' #initialize commit

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