# ip helpers
alias local_ip='ifconfig | grep "inet " | grep -v  "127.0.0.1" | awk "{print \$2}"'
alias global_ip='~/Resources/helper_programs/global_ip'

# show open ports
alias open_ports='netstat -vatn'

# clear dns locally
alias clear_dns='sudo killall -HUP mDNSResponder'

# show which listeners on the machine
alias listeners='lsof -i -n | egrep "COMMAND|LISTEN"'

# server information
alias nmap='sudo nmap ${1} -O'
