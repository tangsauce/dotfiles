#! /bin/bash
# script to copy in dotfiles from jeff's macbook to `dotfiles` repo

# .config folder

cp ~/.eslintrc.js eslintrc.js
cp ~/.gitconfig gitconfig
cp ~/.gitignore_global gitignore_global
cp ~/.vim/vimrc vim/vimrc # only copies config file, not entire directory, because directory has submodules
cp ~/.tmux.conf tmux.conf
cp ~/.zshrc zshrc
cp ~/.zpreztorc zpreztorc
