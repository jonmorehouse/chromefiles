alias local_ip='ifconfig | grep "inet " | grep -v  "127.0.0.1" | awk "{print \$2}"'
alias global_ip='~/Resources/helper_programs/global_ip'

alias open_ports='netstat -vatn'

