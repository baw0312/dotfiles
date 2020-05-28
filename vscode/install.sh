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
alefragnani.Bookmarks
CoenraadS.bracket-pair-colorizer
dbaeumer.vscode-eslint
dsznajder.es7-react-js-snippets
eamodio.gitlens
EditorConfig.EditorConfig
esbenp.prettier-vscode
formulahendry.auto-rename-tag
hediet.vscode-drawio
HookyQR.beautify
ipedrazas.kubernetes-snippets
kumar-harsh.graphql-for-vscode
marcostazi.VS-code-vagrantfile
mauve.terraform
ms-azuretools.vscode-docker
ms-kubernetes-tools.vscode-kubernetes-tools
ms-python.python
ms-vscode.Go
quicktype.quicktype
redhat.vscode-yaml
ritwickdey.LiveServer
rokoroku.vscode-theme-darcula
steoates.autoimport
streetsidesoftware.code-spell-checker
VisualStudioExptTeam.vscodeintellicode
vscode-icons-team.vscode-icons
wesbos.theme-cobalt2
wix.vscode-import-cost
xabikos.JavaScriptSnippets
"
	for module in $modules; do
		code --install-extension "$module" || true
	done
fi
