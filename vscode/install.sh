#!/bin/sh
if command -v code >/dev/null; then
	if [ "$(uname -s)" = "Darwin" ]; then
		VSCODE_HOME="$HOME/Library/Application Support/Code"
	else
		VSCODE_HOME="$HOME/.config/Code"
	fi

	mkdir -p "$VSCODE_HOME/User"

	ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
	ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"
	ln -sf "$DOTFILES/vscode/snippets" "$VSCODE_HOME/User/snippets"

	modules="
be5invis.toml
coolbear.systemd-unit-file
eamodio.gitlens
EditorConfig.EditorConfig
fabiospampinato.vscode-monokai-night
foxundermoon.shell-format
HookyQR.beautify
mauve.terraform
mechatroner.rainbow-csv
ms-azuretools.vscode-docker
ms-python.python
ms-vscode.Go
PKief.material-icon-theme
quicktype.quicktype
redhat.vscode-yaml
shanoor.vscode-nginx
tommasov.hosts
vscoss.vscode-ansible
xabikos.JavaScriptSnippets
yzhang.markdown-all-in-one
"
	for module in $modules; do
		code --install-extension "$module" || true
	done
fi
