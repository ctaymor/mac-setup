#!/usr/bin/env bash

set -eux
if [ ! -e ~/.config/nvim ]; then
  ln -s ~/workspace/mac-setup/dotfiles/nvim ~/.config/nvim

else
  echo "~/.config/nvim already exists. Not overwriting it"
fi
