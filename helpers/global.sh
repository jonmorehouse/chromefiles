# find . -type f \( ! -iname "*.md" \) -exec mv {} {}.sh \; //one liner to find based on an exclude regex

# general one-liners
alias export_display='export DISPLAY=:0'
alias simple_server='python -m SimpleHTTPServer'
# alias reload='source ~/.bash_profile'

# clear terminal logs
alias clear_logs='sudo rm -rf /private/var/log/asl/*.asl && sudo -K'
alias html_2_pdf='wkhtmltopdf'

# remove the sudo privileges
alias kill_sudo='sudo -K'

# restart nginx
alias nginx.restart='nginx -s stop && nginx'
alias nginx.path='cd /usr/local/nginx/'

# vlc helper for acer!
alias vlc='vlc -I rc'

# open port

# forward port

# clear dns locally
alias clear_dns='sudo killall -HUP mDNSResponder'

# show which listeners on the machine
alias listeners='lsof -i -n | egrep "COMMAND|LISTEN"'

# server information
alias nmap='sudo nmap ${1} -O'

# alias show_packages='dpkg -l | awk \' { print $2 }\''


