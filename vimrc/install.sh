#!/usr/bin/env bash

mkdir -p ~/.vim/plugin


rm -rf ~/.vimrc
rm -rf ~/.zshrc
ln -s ~/dotfiles/vimrc/vimrc/.vimrc ~/.vimrc
ln -s ~/dotfiles/vimrc/vimrc/.zshrc ~/.zshrc

# vim sources in order of files, so 1,2,3 at beginning defines order
# check order: :scriptnames
for f in find *.vim
do
    rm -rf ~/.vim/plugin/$f
    ln -s ~/dotfiles/vimrc/vimrc/$f ~/.vim/plugin/$f
done

rm -rf ~/.vim/plugin/find
