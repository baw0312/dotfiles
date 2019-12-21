#!/bin/sh
alias tka='tmux kill-session -t .'
alias td='tmux new-session -d -s DEV && source $HOME/.tmux/powerline-theme.tmux && tmux attach -t DEV'
