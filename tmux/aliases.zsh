#!/bin/sh
alias tka='tmux kill-session -t .'
alias ta='tmux attach'
alias td='tmux new-session -d -s dev && source $HOME/.tmux/powerline-theme.tmux && tmux attach -t dev'
