#!/usr/bin/env bash

# INSTALL NODE VERSION MANAGER
set -eux

# install or update
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

ln -s ~/workspace/mac-setup/dotfiles/nvim/user/plugins.lua ~/.config/nvim/lua/user/plugins.lua 
# Set the current shell to have access to nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvim +PackerSync
