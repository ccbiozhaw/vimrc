#!/usr/bin/env bash

mkdir -p ~/.vim/plugin

for f in find *.vim
do
    rm -rf ~/.vim/plugin/$f
    ln -s ~/dotfiles/vimrc/$f ~/.vim/plugin/$f
done









