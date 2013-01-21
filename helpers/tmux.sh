alias "tmux.new"='tmux new-session -s ${1}'
alias "tmux.attach"='tmux attach-session -t ${1}'
alias "tmux.destroy"='tmux attach-session -t ${1} && exit'
alias "tmux.rename"='tmux attach-session -t ${1}'
alias "tmux.list"='tmux list-sessions'
alias "tmux.kill"='tmux kill-server'
alias "tmux.reload"='tmux source-file ~/.tmux.conf'

# alias "tmux.send"='tmux send-keys -t "${1}" "${2}" C-m'

# tmux list-windows -t $session|cut -d: -f1|xargs -I{} tmux send-keys -t $session:{} $message
