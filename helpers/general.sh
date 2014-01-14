###
###	Navigation Shortcuts
###
# basic navigation helpers
alias ~='cd ~'
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias back='cd -'

###
###	Directory View Shortcuts
###
alias lsa='ls -lah'
alias l='ls -lA1'
alias ll='ls -l'
alias lll='ls -l'
alias la='ls -lA'
alias al='ls -lA'
alias lal='ls -lA'
alias lar='ls -lAR'
alias sl=ls # often screw this up
alias lr='ls -lR'

###
### 	General Shortcuts
###
# Show history
alias history='fc -l 1'

# watch a command
alias watch='watch -n 1'

# show numberical permissions on file
alias permissions='gstat -c "%a %n"'

# start a simple server
alias simple_server='python -m SimpleHTTPServer'






