#!/bin/bash
mkdir ./vim
ln -s ./vimrc ~/.vimrc
ln -s ./vim ~/.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c ":PluginInstall"
