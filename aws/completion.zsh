#!/bin/sh
# shellcheck disable=SC1090,SC1091
test -e "$PYENV_ROOT/versions/3.8.0/bin/aws_zsh_completer.sh" &&
	. $PYENV_ROOT/versions/3.8.0/bin/aws_zsh_completer.sh
