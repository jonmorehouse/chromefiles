###
###	LOCAL SYSTEM PROGRAM SHORTCUTS / ALIASES (all others in helpers/general.sh)
###
alias git='hub'
alias g='hub'
alias v='vim'
alias pod-dev='rvm ruby-2.0.0-p353@ios-devops do $HOME/Documents/production_development/jumper-ios/CocoaPods/bin/pod'
alias r='reload'

###
###	COOL BASH ONE-LINERS
###
#while true; do { echo -e 'HTTP/1.1 200 OK\r\n'; cat index.html; } | nc -l 8080; done

###
###	GENERAL DIRECTORY SHORTCUTS
###
alias document='cd $HOME/Documents'
alias dotfiles='cd $HOME/dotfiles'
alias vim-config='cd $HOME/dotfiles/vim'
alias amazon='cd $HOME/amazon'
alias download='cd $HOME/Downloads'
alias desktop='cd $HOME/Desktop'
alias dropbox='cd $HOME/Dropbox'
alias music='cd $HOME/Music'
alias movies='cd $HOME/Movies/movies'
alias shows='cd $HOME/Movies'
alias picture='cd $HOME/Pictures'
alias wd160='cd /Volumes/WD160/'
alias work='cd $HOME/Documents/work'
alias startups='cd $HOME/Documents/start_ups'
alias temp='cd $HOME/Documents/temp'
alias blogs='cd $HOME/Documents/general_development/blogs'

###
### 	Global variables for alias use 
###
base_directory="$HOME/Documents"
production_development_directory="${base_directory}/production_development"

###
###	PROGRAM DIRECTORY SHORTCUTS
###
for i in `ls $HOME/Documents/programs`
do
	# create the alias helpers
	aliasName="programs-$i"
	aliasFunction="cd $HOME/Documents/programs/$i"

	# now go ahead and export the alias
	eval alias ${aliasName}='${aliasFunction}'
done

###
###	CODE SPECIFIC FOLDER ALIASES
###
eval alias programs='"cd ${base_directory}/programs"'
eval alias production_development='"cd ${production_development_directory}"'
eval alias general_development='"cd ${base_directory}/general_development"'
eval alias alias helper_programs='"cd ${base_directory}/general_development/helper_programs"'
eval alias public_code='"cd ${base_directory}/general_development/public_code"'
eval alias techstart='"cd ${base_directory}/production_development/techstart"'

###
###	GENERAL PROJECTS
###
eval alias prospero='"cd /Users/MorehouseJ09/Documents/production_development/prospero/current"'
eval alias personal='"cd /Users/MorehouseJ09/Documents/production_development/personal/jonmorehouse.me"'
eval alias resume='"cd /Users/MorehouseJ09/Documents/production_development/personal/resume"'
eval alias vagrant_packages='"cd /Users/MorehouseJ09/Documents/programs/vagrant/"'
eval alias light-dotfiles='"cd /Users/MorehouseJ09/Documents/programs/light-dotfiles"'

###
###	Mobilend / Invidy Projects
###
eval alias mobilend-inc='"cd ${production_development_directory}/mobilend-inc"'
eval alias tsp='"cd ${production_development_directory}/mobilend-inc/thestreetpicks/"'
eval alias invidy='"cd ${production_development_directory}/invidy"'
eval alias email-app='"cd ${production_development_directory}/mobilend-inc/thestreetpicks/app"'

### 
###	JUMPER GENERAL
###
eval alias jumper='"cd ${production_development_directory}/jumper"'
eval alias backend='"cd ${production_development_directory}/jumper-backend"'
eval alias devops='"cd ${production_development_directory}/jumper-devops"'
eval alias docs='"cd ${production_development_directory}/jumper/docs"'
eval alias blog='"cd ${production_development_directory}/jumper/blog"'
eval alias growth-hacking='"cd ${production_development_directory}/jumper/growth-hacking"'

### 
### 	JUMPER COMPONENTS
###

# Jumper clients
eval alias ios='"cd ${production_development_directory}/jumper-ios"'
eval alias ios-app-v1='"cd ${production_development_directory}/jumper-ios/iphone-app-v1"'
eval alias ios-app='"cd ${production_development_directory}/jumper-ios/iphone-app-v1"'

# ios devops go into the ios folder because its soo unrelated to the other devops components
eval alias ios-devops='"cd ${production_development_directory}/jumper-ios/devops && r"'

# web app
eval alias app='"cd ${production_development_directory}/jumper-web/web-app && r"'

# end 2 end testing etc
eval alias test='"cd ${production_development_directory}/jumper-backend/streaming-integration-tests"'
eval alias fixtures='"cd ${production_development_directory}/jumper-backend/fixtures"'

# general devops etc
eval alias cookbooks='"cd ${production_development_directory}/jumper-devops/cookbooks"'
eval alias registry='"cd ${production_development_directory}/jumper-devops/internal-docker-registry"'
eval alias s3-devops='"cd ${production_development_directory}/jumper-devops/s3-devops && r"'
eval alias devops-core='"cd ${production_development_directory}/jumper-devops/devops-core && r"'
eval alias uploader='"cd ${production_development_directory}/jumper-backend/broadcast-uploader && r"'

# media cluster worker 
eval alias media-workers='"cd ${production_development_directory}/jumper-backend/media-workers && r"'
eval alias media-devops='"cd ${production_development_directory}/jumper-devops/media-devops && r"'

# python services cluster etc
eval alias services='"cd ${production_development_directory}/jumper-backend/services && r"'
eval alias services-devops='"cd ${production_development_directory}/jumper-devops/services-devops && r"'

# experimental tools / processes - not in production currently
eval alias go-media-workers='"cd ${production_development_directory}/jumper-backend/go-media-workers && r"'
eval alias c-encoder='"cd ${production_development_directory}/jumper-backend/c-encoder && r"'
eval alias parse='"cd ${production_development_directory}/jumper-backend/parse-mapper && r"'

# initialize api wrapper for communicating with python services layer 
eval alias api='"cd ${production_development_directory}/jumper-backend/api && r"'
eval alias api-devops='"cd ${production_development_directory}/jumper-devops/api-devops && r"'

# initialize jivoo 
eval alias jivoo='"cd $home/documents/production_development/jivoo/version.1"'

# remove any left over variables that make navigation weirder
production_development_directory=""

