
echo "Installing luan nvim"
if [[ -d ~/.config/nvim ]]; then
echo "Making backup of ~/.config/nvim at ~/.config/nvim.bak"

# TODO: Investigate rsync as a better option
	rm -rf ~/.config/nvim.bak
	mv  ~/.config/nvim{,.bak}
fi

# required for startify plugin for nvim from luan nvim
# Also matches "set viminfo='100,n$HOME/.vim/files/info/viminfo'" in vimrc
#mkdir -p ~/.vim/files/info

python3 -m pip install --user --upgrade pynvim
git clone https://github.com/luan/nvim ~/.config/nvim

ln -s ~/workspace/mac-setup/dotfiles/nvim/user/plugins.lua ~/.config/nvim/lua/user/plugins.lua

nvim + PackerSync
