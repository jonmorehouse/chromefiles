# general one-liners
alias export_display='export DISPLAY=:0'
alias simple_server='python -m SimpleHTTPServer'
alias reload='source ~/.bash_profile'

# clear terminal logs
alias clear_logs='sudo rm -rf /private/var/log/asl/*.asl && sudo -K'
alias html_2_pdf='wkhtmltopdf'

# remove the sudo privileges
alias kill_sudo='sudo -K'

# unmount disk!
alias unmount='diskutil unmountDisk ${1} && diskutil eject ${1}'
# restart nginx
alias nginx.restart='nginx -s stop && nginx'

