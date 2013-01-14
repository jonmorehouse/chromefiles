alias "tmux.attach"='tmux attach-session -t ${1}'
alias "tmux.destroy"='tmux attach-session -t ${1} && exit'
alias "tmux.rename"='tmux attach-session -t ${1}'
alias "tmux.list"='tmux list-sessions'