#/usr/bin/env bash

set -eux

cd $HOME/workspace
git clone https://github.com/rupa/z.git

echo ". $HOME/workspace/z/z.sh" >> $HOME/.zshrc
echo ". $HOME/workspace/z/z.sh" >> $HOME/.bashrc
