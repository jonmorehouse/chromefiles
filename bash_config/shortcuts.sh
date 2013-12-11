###
###	SYSTEM SHORTCUTS / ALIASES
###
# basic navigation helpers
alias ~='cd ~'
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias back='cd -'

###
###	PROGRAM SHORTCUTS / ALIASES
###
alias git='hub'
alias v='vim'
alias g='grunt'

###
###	COOL BASH ONE-LINERS
###
#while true; do { echo -e 'HTTP/1.1 200 OK\r\n'; cat index.html; } | nc -l 8080; done

###
###	GENERAL DIRECTORY SHORTCUTS
###
alias document='cd ~/Documents'
alias dotfiles='cd ~/dotfiles'
alias amazon='cd ~/amazon'
alias download='cd ~/Downloads'
alias desktop='cd ~/Desktop'
alias dropbox='cd ~/Dropbox'
alias music='cd ~/Music'
alias movies='cd ~/Movies'
alias picture='cd ~/Pictures'
alias wd160='cd /Volumes/WD160/'
alias work='cd ~/Documents/work'
alias startups='cd ~/Documents/start_ups'
alias temp='cd ~/Documents/temp'
alias blogs='cd /Users/MorehouseJ09/Documents/general_development/blogs'
alias courses='cd /Users/MorehouseJ09/Documents/courses/'
alias imagery='cd /Users/MorehouseJ09/Documents/resources/imagery/'
alias assets='cd ~/Documents/assets'

###
### 	Global variables for alias use 
###
production_development_directory="$HOME/Documents/production_development"
program_directory="$HOME/Documents/programs"

###
###	PROGRAM DIRECTORY SHORTCUTS
###
for i in `ls $program_directory`
do
	# create the alias helpers
	aliasName="programs-$i"
	aliasFunction="cd $program_directory/$i"

	# now go ahead and export the alias
	eval alias ${aliasName}='${aliasFunction}'
done

###
###	CODE SPECIFIC FOLDER ALIASES
###
alias programs='cd ~/Documents/programs'
alias production_development='cd ~/Documents/production_development'
alias general_development='cd ~/Documents/general_development'
alias helper_programs='cd ~/Documents/general_development/helper_programs'
alias testing_environments='general_development && cd testing_environments/'
alias global_modules='general_development && cd modules'
alias notes='general_development && cd notes/'
alias hacking='/Users/MorehouseJ09/Documents/general_development/hacking'
alias cheatsheets='/Users/MorehouseJ09/Documents/general_development/cheatsheets'
alias public_code='cd /Users/MorehouseJ09/Documents/general_development/public_code'
alias tech_start='cd $HOME/production_development/techstart'

###
###	Create all the relevant project aliases
###
for projectType in ls ~/Documents/programs
do
	aliasName="projects-$projectType"

done



###
###	GENERAL PROJECTS
###
alias prospero='cd /Users/MorehouseJ09/Documents/production_development/prospero/current'
alias personal='cd /Users/MorehouseJ09/Documents/production_development/personal/jonmorehouse.me'
alias resume='cd /Users/MorehouseJ09/Documents/production_development/personal/resume'
alias vagrant_packages='cd /Users/MorehouseJ09/Documents/programs/vagrant/'
alias light-dotfiles='cd /Users/MorehouseJ09/Documents/programs/light-dotfiles'

###
###	Mobilend / Invidy Projects
###
alias invidy='cd $HOME/Documents/production_development/invidy'
alias email_app='cd $HOME/Documents/production_development/thestreetpicks/email_app'

### 
###	JUMPER GENERAL
###
alias jumper='cd $HOME/Documents/production_development/jumper'
alias backend='cd $HOME/Documents/production_development/jumper-backend'
alias devops='cd $HOME/Documents/production_development/jumper-devops'
alias docs='cd $HOME/Documents/production_development/jumper-backend/docs'
alias blog='cd $HOME/Documents/production_development/jumper/blog'

### 
### 	JUMPER COMPONENTS
###

# Jumper clients
alias ios='cd $HOME/Documents/production_development/jumper-ios'
alias ios-app='cd $HOME/Documents/production_development/jumper-ios/app'

# ios devops go into the ios folder because its soo unrelated to the other devops components
alias ios-devops='cd $HOME/Documents/production_development/jumper-ios/devops'

# web app
alias app='cd $HOME/Documents/production_development/jumper-web/web-app'

# end 2 end testing etc
alias test='cd $HOME/Documents/production_development/jumper-backend/streaming-integration-tests'
alias fixtures='cd $HOME/Documents/production_development/jumper-backend/fixtures'

# general devops etc
alias cookbooks='cd $HOME/Documents/production_development/jumper-devops/cookbooks'
alias registry='cd $HOME/Documents/production_development/jumper-devops/internal-docker-registry'
alias s3-devops='cd $HOME/Documents/production_development/jumper-devops/s3-devops'
alias devops-core='cd $HOME/Documents/production_development/jumper-devops/devops-core'
alias uploader='cd $HOME/Documents/production_development/jumper-backend/broadcast-uploader'

# media cluster worker 
alias media-workers='cd $HOME/Documents/production_development/jumper-backend/media-workers'
alias media-devops='cd $HOME/Documents/production_development/jumper-devops/media-devops'

# python services cluster etc
alias services='cd $HOME/Documents/production_development/jumper-backend/services'
alias services-devops='cd $HOME/Documents/production_development/jumper-devops/services-devops'

# experimental tools / processes - not in production currently
alias go-media-workers='cd $HOME/Documents/production_development/jumper-backend/go-media-workers'
alias c-encoder='cd $HOME/Documents/production_development/jumper-backend/c-encoder'
alias parse='cd $HOME/Documents/production_development/jumper-backend/parse-mapper'

# initialize api wrapper for communicating with python services layer 
alias api='cd $HOME/Documents/production_development/jumper-backend/api'
alias api-devops='cd $HOME/Documents/production_development/jumper-devops/api-devops'

# initialize jivoo 
alias jivoo='cd $HOME/Documents/production_development/jivoo/version.1'


