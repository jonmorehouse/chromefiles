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

# apache stuff
alias apache.restart='sudo apachectl restart'
alias apache.path='cd /usr/local/apache2'

# vlc helper for acer!
alias vlc='vlc -I rc'
alias clear.logs='echo > /usr/local/apache2/logs/access_log && echo > /usr/local/apache2/logs/error_log && echo > /usr/local/nginx/logs/error.log && echo > /usr/local/nginx/logs/access.log'


# alias show_packages='dpkg -l | awk \' { print $2 }\''

alias and='&&'
