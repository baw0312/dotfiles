#!/bin/sh
# Lazy load nvm
lazynvm() {
  unset -f nvm node npm npx
  export NVM_DIR="$HOME/.nvm"
  export NVM_PATH=/usr/local/opt/nvm
  [ -s "$NVM_PATH/nvm.sh" ] && . "$NVM_PATH/nvm.sh"  # This loads nvm
  [ -s "$NVM_PATH/etc/bash_completion.d/nvm" ] && . "$NVM_PATH/etc/bash_completion.d/nvm"
}

nvm() {
  lazynvm
  nvm $@
}

node() {
  lazynvm
  node $@
}

npm() {
  lazynvm
  npm $@
}

npx() {
  lazynvm
  npx $@
}
