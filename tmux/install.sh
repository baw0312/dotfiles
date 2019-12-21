#!/bin/sh

if ! command -v tmux >/dev/null 2>&1; then
	if [ "$(uname -s)" = "Darwin" ]; then
		if command -v brew >/dev/null 2>&1; then
			brew install tmux
		fi
	else
		sudo apt-get install tmux
	fi

	install_config
fi

install_config() {
	if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
		git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	fi

	cp powerline-theme.tmux $HOME/.tmux/powerline-theme.tmux
	tmux source ~/.tmux.conf >/dev/null
}
