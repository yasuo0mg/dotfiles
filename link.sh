#!/bin/bash

ln -sf ~/dotfiles/Brewfile ~/Brewfile
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
ln -sf ~/dotfiles/karabiner/assets/complex_modifications/1572145077.json ~/.config/karabiner/assets/complex_modifications
# https://qiita.com/wawawa/items/50c2c612b0937f28d92b
# ln -sf /usr/local/bin/gcc-11 /usr/local/bin/gcc
# ln -sf /usr/local/bin/g++-11 /usr/local/bin/g++
# ln -sf $(ls -d /usr/local/bin/* | grep "/g++-" | sort -r | head -n1) /usr/local/bin/g++
