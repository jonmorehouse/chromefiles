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

# forward ports from 80 to 8080 so that I can run the server as a normal user!
alias forward_ports='sudo ipfw add 100 fwd 127.0.0.1,8080 tcp from any to any 80 in'

# flus the forwarding to ensure that things are updated!
# sudo ipfw flush
