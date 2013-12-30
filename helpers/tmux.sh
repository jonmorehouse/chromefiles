alias tmux.new='tmux new-session -s ${1}'
alias tmux.attach='tmux attach-session -t ${1}'
alias tmux.rename='tmux attach-session -t ${1}'
alias tmux.list='tmux list-sessions'
alias tmux.kill_all='tmux kill-server'
alias tmux.reload='tmux source-file ~/.tmux.conf'
alias tmux.kill='tmux kill-window -t ${1}'

# inner tmux commands
alias switch='tmux switch -t ${1}'
alias list='tmux list-sessions'
alias attach='tmux attach-session -t ${1}'
alias new='tmux new-session -s ${1}'

# alias "tmux.send"="tmux send-keys -t ${1} 'ls' C-m"
# tmux list-windows -t $session|cut -d: -f1|xargs -I{} tmux send-keys -t $session:{} $message
