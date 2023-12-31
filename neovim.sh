#!/bin/bash
#Build prerequisites
sudo nala install -y ninja-build gettext cmake unzip curl

# XSessions and qtile.desktop
if [[ ! -d ~/Repository ]]; then
    sudo mkdir ~/Repository
fi
# Move to Repository directory
cd ~/Repository

# clone
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

# Retrieve https://github.com/junegunn/vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    
cp -r ./resources/nvim ~/.config/
nvim
